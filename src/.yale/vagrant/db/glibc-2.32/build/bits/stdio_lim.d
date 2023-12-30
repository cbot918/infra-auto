$(common-objpfx)bits/stdio_lim.h $(common-objpfx)bits/stdio_lim.d: \
 $(..)posix/bits/posix1_lim.h $(..)sysdeps/x86/bits/wordsize.h \
 $(..)sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h

$(..)posix/bits/posix1_lim.h:

$(..)sysdeps/x86/bits/wordsize.h:

$(..)sysdeps/unix/sysv/linux/bits/local_lim.h:

/usr/include/linux/limits.h:
