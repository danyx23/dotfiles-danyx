
. ~/.common.sh

export EMAIL="e@lefant.net"
export DEBEMAIL="Fabian Linzberger <e@lefant.net>"
export DARCS_EMAIL="Fabian Linzberger <e@lefant.net>"
export REPORTBUGEMAIL="Fabian Linzberger <e@lefant.net>"
export GIT_AUTHOR_NAME="Fabian Linzberger"
export GIT_AUTHOR_EMAIL="e@lefant.net"
export GIT_COMMITTER_NAME="Fabian Linzberger"
export GIT_COMMITTER_EMAIL="e@lefant.net"
export GPGKEY=C02860F0

alias cpan_modulebuild_style_install="perl Build.PL; ./Build; ./Build test && sudo ./Build install"


[[ ! -e ~/.zsh/zshlocal.sh ]] && cp -v ~/.templates/zshlocal.sh ~/.zsh/zshlocal.sh
[[ -e ~/.emacs.d ]] && [[ ! -e ~/.emacs.d/local.el ]] && cp -v ~/.templates/local.el ~/.emacs.d/local.el

for dir in ~/.ssh/sock ~/.encfs
do
    [[ ! -d $dir ]] && mkdir -p $dir
done


#helper functions
find_best_editor () {
    if [ -e /tmp/emacs`id -u`/server -o -e /tmp/esrv`id -u`-`hostname` ]
    then
        export EDITOR="emacsclient -c"
    else
        export EDITOR=$(find_best mg zile nano vim)
    fi
    export VISUAL=$EDITOR
    alias e="$EDITOR"
}

maybe_krb5ccnamesh () {
    if [ `klist --test &>/dev/null ; echo $?` = 0 -a ! -z $KRB5CCNAME ]
    then
        echo "export KRB5CCNAME=$KRB5CCNAME" >$HOME/.krb5ccname.sh
    elif [ `klist --test &>/dev/null ; echo $?` = 1 -a -f $HOME/.krb5ccname.sh ]
    then
        source $HOME/.krb5ccname.sh
        if [ ! `klist --test &>/dev/null ; echo $?` = 0 ]
        then
            rm $HOME/.krb5ccname.sh
            unset KRB5CCNAME
        fi
    fi
}

maybe_source_keychain () {
    if [ `ssh-add -l &>/dev/null ; echo $?` = 2 -a -f $HOME/.keychain/$HOST-sh ]
    then
        source $HOME/.keychain/$HOST-sh
        if [ ! `ssh-add -l &>/dev/null ; echo $?` = 0 ]
        then
            rm -r $HOME/.keychain
            killall ssh-agent
            unset SSH_AUTH_SOCK
        fi
    fi
}

fix_env () {
    maybe_source_keychain
    maybe_krb5ccnamesh
    find_best_editor

    watch=(notme)
    #setopt notify
}

maybe_run_keychain () {
    if [ -e /usr/bin/keychain ]
    then
        if [ `ssh-add -l &>/dev/null ; echo $?` = 0 -a ! -z $SSH_AUTH_SOCK ]
        then
            keychain -q --inherit any
        fi
    fi
}


# case dispatch on running local screen, meta screen or no screen at all (yet)
case $STY in
    *.local)
        preexec () {
            local CMD=${1[(wr)^(*=*|sudo|ssh|-*)]}       # dont't use hostname
            echo -ne "\ek$CMD\e\\"
            SCREENTITLE=$'%{\ekzsh\e\\%}'

            fix_env
        }
        precmd () {
            RPROMPT="%(?..:()% ${SCREENTITLE}"
        }
        setopt notify
        ;;
    *.meta)
        preexec () {
            local CMD=${1[(wr)^(*=*|sudo|ssh|-*)]}       # dont't use hostname
            CMD=`echo $CMD|cut -f 1 -d "."`
            echo -ne "\ek$CMD\e\\"
            SCREENTITLE=$'%{\ekzsh\e\\%}'

            fix_env
        }
        precmd () {
            RPROMPT="%(?..:()% ${SCREENTITLE}"
        }
        ;;
    *)
        maybe_run_keychain
        fix_env

        if [ -z $SSH_TTY ]; then
            case `hostname` in
                nix)
                    # sudo invoke-rc.d openvpn start validad
                    ;;
                *)
                    ;;
            esac

            unsetopt notify
            #unison -silent -terse &>/dev/null

            if touch /dev/fuse &>/dev/null
            then
                if [ -e /usr/bin/afuse ]
                then
                    afuse \
                        -o mount_template="sshfs -o reconnect %r:/ %m" \
                        -o unmount_template="fusermount -u -z %m" \
                        ~/sshfs/ &
                fi

                if [ -e /usr/bin/encfs ]
                then
                    afuse \
                        -o mount_template='sh -c "encfs -S /home/.enc/%r %m <~/.secret/encfs/%r"' \
                        -o unmount_template="fusermount -u -z %m" \
                        ~/.encfs
                fi
            fi

            # # run zeiterfassung start
	    # cd ~/shared/arbeitszeit/`hostname`
	    # echo "arrived **" |~/shared/code/python/timelog/timelog.py
	    # cd ~

            screen -a -A -d -RR -S meta "-e^Oo" -c .screenrc.meta

            # # run zeiterfassung end
	    # cd ~/shared/arbeitszeit/`hostname`
	    # echo "work" |~/shared/code/python/timelog/timelog.py

            mount |grep -q ~/.encfs && fusermount -u -z ~/.encfs

            which kdestroy >/dev/null && kdestroy -q &>/dev/null

            #unison -silent -terse &
            disown
            exit 0
        else
            screen -a -A -d -RR -S local
        fi
        ;;
esac
