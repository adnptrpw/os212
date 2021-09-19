#!/bin/bash

# Copyright (C) 2021 adnptrpw

# Code below is copied from https://github.com/cbkadal/os212/blob/master/TXT/myscript.sh
# Credit to Mr. Rahmat M. Samik-Ibrahim

# =============== BEGIN COPIED CODE ===============

# REV00 Sun 12 Sep 2021 03:10:00 WIB
# START Sun 12 Sep 2021 03:10:00 WIB

FILES="my*.txt my*.sh"
SHA="SHA256SUM"

echo "rm -f $SHA $SHA.asc"
rm -f $SHA $SHA.asc

echo "sha256sum $FILES > $SHA"
sha256sum $FILES > $SHA

echo "sha256sum -c $SHA"
sha256sum -c $SHA

echo "gpg --output $SHA.asc --armor --sign --detach-sign $SHA"
gpg --output $SHA.asc --armor --sign --detach-sign $SHA

echo "gpg --verify $SHA.asc $SHA"
gpg --verify $SHA.asc $SHA

exit 0

# =============== END COPIED CODE ===============
