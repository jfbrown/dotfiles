#!/bin/bash

IFS='
'

case $1 in
  "")
    echo 'Usage: zap [-2] pattern' 1>&2; exit 1
    ;;
  -*)
    SIG=$1; shift
    ;;
esac

echo '    PID TTY    TIME CMD'
kill $SIG `pick \`ps -ag | egrep "$*"\` | awk '{print $1}'`
