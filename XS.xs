#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

#include <windows.h>
#include <commctrl.h>
#include <stdio.h>

MODULE = Sys::Info::Driver::Windows::XS  PACKAGE = Sys::Info::Driver::Windows::XS

int
GetSystemMetrics(index)
    int index
CODE:
    RETVAL = GetSystemMetrics(index);
OUTPUT:
    RETVAL
