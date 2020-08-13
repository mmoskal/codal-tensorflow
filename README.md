# Tensorflow library for CODAL

To refresh tensorflow files, run the following:

```
gmake -f tensorflow/lite/micro/tools/make/Makefile  generate_hello_world_make_project
rm -rf <HERE>/tensorflow/
rm -rf <HERE>/third_party/
cp -r tensorflow/lite/micro/tools/make/gen/osx_x86_64/prj/hello_world/make/tensorflow/ <HERE>/
cp -r tensorflow/lite/micro/tools/make/gen/osx_x86_64/prj/hello_world/make/third_party/ <HERE>/
```
