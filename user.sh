#!/bin/bash

# This adds the jackb user with uid/gid 1185. Pass the desired password as
# an argument, in plaintext.

which useradd || exit 1
which perl || exit 1

pass=$(perl -e "print crypt(\"$1\", 'randomsalt')")
useradd --groups sudo -m -s /bin/bash -U -p $pass --uid 1185 --gid 1185 jackb

