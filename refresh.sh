#!/bin/sh

if ! test -f "$1"/models.BUILD ; then
  echo "USAGE: $0 <tensorflow-dir>"
  exit 1
fi
set -x
set -e
HERE=$(pwd)
TF="$1"
(cd "$TF" && gmake -f tensorflow/lite/micro/tools/make/Makefile  generate_hello_world_make_project)
rm -rf tensorflow third_party hello_world
SRC=`ls -d $TF/tensorflow/lite/micro/tools/make/gen/*/prj/hello_world/make | head -1`
cp -r "$SRC"/tensorflow/ .
cp -r "$SRC"/third_party/ .
mv tensorflow/lite/micro/examples/hello_world .
