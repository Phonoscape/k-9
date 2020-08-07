#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`
PROJECTROOT=`dirname $SCRIPTPATH`

cd $PROJECTROOT

find app/ui/legacy/src/main/res/values-* -name "strings.xml" -type f -exec ./tools/fix_transifex_output.sh {} \;

cd -
