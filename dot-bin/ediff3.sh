#!/bin/bash -x

## downloaded from http://ulf.zeitform.de/de/dokumente/git-ediff

# tools
_EMACSCLIENT=emacsclient
_BASENAME=basename
_EGREP=egrep
_MKTEMP=mktemp

# args
_LOCAL=${1}
_REMOTE=${2}
if [ ${3} ] ; then
    _MERGED=${3}
else
    _MERGED=${_REMOTE}
fi
_EDIFF=ediff3
_EVAL="${_EDIFF} \"${_LOCAL}\" \"${_REMOTE}\" \"${_MERGED}\""

# run emacsclient
${_EMACSCLIENT} -c -t -e "(${_EVAL})" 2>&1

exit 0
