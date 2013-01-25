. ~/.common.sh

export EMAIL="daniel@danielbachler.de"
#export DEBEMAIL="Fabian Linzberger <e@lefant.net>"
#export DARCS_EMAIL="Fabian Linzberger <e@lefant.net>"
#export REPORTBUGEMAIL="Fabian Linzberger <e@lefant.net>"
export GIT_AUTHOR_NAME="Daniel Bachler"
export GIT_COMMITTER_NAME="Daniel Bachler"
export HG_AUTHOR_NAME="Daniel Bachler"
export HG_COMMITTER_NAME="Daniel Bachler"
#export GIT_AUTHOR_EMAIL="e@lefant.net"
#export GIT_COMMITTER_EMAIL="e@lefant.net"

# nicer line drawing characters when connecting with putty
export NCURSES_NO_UTF8_ACS=1

[[ ! -e ~/.zsh/zshlocal.sh ]] && cp -v ~/.templates/zshlocal.sh ~/.zsh/zshlocal.sh
[[ -e ~/.emacs.d ]] && [[ ! -e ~/.emacs.d/local.el ]] && cp -v ~/.templates/local.el ~/.emacs.d/local.el

#helper functions

fix_env () {

    watch=(notme)
    #setopt notify
}

# set screen / tmux window title to hostname / sudo command
cool_window_title() {
    local CMD=${1[(wr)^(*=*|sudo|ssh|-*)]}
    CMD=`echo $CMD|cut -f 1 -d "."`
    echo -ne "\ek$CMD\e\\"
    SCREENTITLE=$'%{\ekzsh\e\\%}'
}

chpwd() {
    export __CURRENT_GIT_BRANCH="$(parse_git_branch)"
}
PS1='%n@%m:%~/ $(echo $__CURRENT_GIT_BRANCH)$ '


# case dispatch on running local screen, meta screen or no screen at all (yet)
case $TMUX in
    *default*)
        preexec () {
            fix_env
        }
        precmd () {
            __CURRENT_GIT_BRANCH="$(parse_git_branch)"
        }
        setopt notify
        ;;
    *meta*)
        preexec () {
            cool_window_title $*
            fix_env
        }
        precmd () {
        }
        ;;
    *)
#        maybe_run_keychain
        fix_env

        if [[ ( -z $SSH_TTY || -n $DANYX_TMUXMASTER ) ]]; then
#            case `hostname` in
#               *)
#            esac

            unsetopt notify
            #unison -silent -terse &>/dev/null

#            if touch /dev/fuse &>/dev/null
#            then
#                if [ -e /usr/bin/afuse ]
#                then
#                    afuse \
#                        -o mount_template="sshfs -o reconnect %r:/ %m" \
#                        -o unmount_template="fusermount -u -z %m" \
#                        ~/sshfs/ &
#                fi
#
#                if [ -e /usr/bin/encfs ]
#                then
#                    afuse \
#                        -o mount_template='sh -c "encfs -S /home/.enc/%r %m <~/.secret/encfs/%r"' \
#                        -o unmount_template="fusermount -u -z %m" \
#                        ~/.encfs
#                fi
#            fi

            # # run zeiterfassung start
	    # cd ~/shared/arbeitszeit/`hostname`
	    # echo "arrived **" |~/shared/code/python/timelog/timelog.py
	    # cd ~

            tmux -L meta -f ~/.tmux.conf.meta attach -t meta

            # # run zeiterfassung end
	    # cd ~/shared/arbeitszeit/`hostname`
	    # echo "work" |~/shared/code/python/timelog/timelog.py

#            mount |grep -q ~/.encfs && fusermount -u -z ~/.encfs

#            which kdestroy >/dev/null && kdestroy -q &>/dev/null

            #unison -silent -terse &
            #disown
            #exit 0
        else
            tmux -L default attach
        fi
        ;;
esac
