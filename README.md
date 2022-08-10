# dll-sample-of-gcc
Dynamic link library sample with using GCC.

This project was created to investigate what happens to the exported symbols when a static library is embedded in a DLL with various options.

# lib

A static library sample.


# dll

A dynamic link library sample with lib.

* libfunc.so : Use -shared option with normaly link.
* libfuncraw.so : Use --whole-archive option.
* libfuncextra.so : Extract libfunc.a. After that Use -shared option with normal link.

If you want to check export symbols, use nm command.

# test

Dynamic link test sample.
If you want to run executable binary, place a dll to under the directory of LD_LIBRARY_PATH.
