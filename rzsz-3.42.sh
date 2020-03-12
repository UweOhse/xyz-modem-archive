---- Cut Here and feed the following to sh ----
#!/bin/sh
# This is a shell archive (produced by shar 3.49)
# To extract the files from this archive, save it to a file, remove
# everything above the "!/bin/sh" line above, and type "sh file_name".
#
# made 03/19/1996 22:44 UTC by caf@omen
# Source directory /u/caf/src/modem/3
#
# existing files will NOT be overwritten unless -c is specified
#
# This shar contains:
# length  mode       name
# ------ ---------- ------------------------------------------
#    891 -rw-rw-r-- COPYING
#   5783 -rw-r--r-- README
#   8004 -rw-r--r-- Makefile
#   6577 -rw-r--r-- zmodem.h
#  17695 -rw-r--r-- zm.c
#   4514 -rw-r--r-- zmr.c
#  35794 -rw-r--r-- sz.c
#  29109 -rw-r--r-- rz.c
#   8764 -rw-r--r-- crctab.c
#   3413 -r--r----- mailer.rz
#   8815 -rw-r--r-- crc.c
#  10537 -rw-r--r-- rbsb.c
#   2868 -rw-r--r-- minirb.c
#   1492 -rw-r--r-- crc.doc
#   2727 -rw-r--r-- minirb.doc
#  18722 -rw-rw-r-- rz.doc
#  24942 -rw-rw-r-- sz.doc
#     22 -rw-r--r-- gz
#    738 -rw-r--r-- zupl.t
#
# ============= COPYING ==============
if test -f 'COPYING' -a X"$1" != X"-c"; then
	echo 'x - skipping COPYING (File already exists)'
else
echo 'x - extracting COPYING (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'COPYING' &&
Rz ans Sz are Copyrighted shareware programs.  Commercial Use of
these programs is subject to licensing conditions detailed in
the sz.c source code.  "Commercial Use" includes use of this
program to transfer files to/from any commercial or shareware
program not published by Omen Technology INC.  Please print the
"mailer.rz" file, fill out the form and return it with your
registration.
X
It is a violation of this program's Copyright to distribute
binaries without the accompanying *.doc, README, and COPYING
files.
X
This software may be freely used to support file transfer
operations to or from duly licensed Omen Technology products.
This includes DSZ, GSZ, ZCOMM, Professional-YAM and PowerCom.
Those desiring to use rz/sz this way must add the
following to the sz compile line: -DCOMPL
X
Use with other commercial or shareware programs
(Crosstalk, Procomm, etc.) REQUIRES REGISTRATION.
SHAR_EOF
chmod 0664 COPYING ||
echo 'restore of COPYING failed'
Wc_c="`wc -c < 'COPYING'`"
test 891 -eq "$Wc_c" ||
	echo 'COPYING: original size 891, current size' "$Wc_c"
fi
# ============= README ==============
if test -f 'README' -a X"$1" != X"-c"; then
	echo 'x - skipping README (File already exists)'
else
echo 'x - extracting README (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'README' &&
Unix Rz and sz support XMODEM, YMODEM, and ZMODEM transfers via
the dial-in controlling TTY port.
X
The contents of this archive can be uploaded to a remote Unix or
XXenix system by ZCOMM or Professional-YAM using the supplied
zupl.t script.  Connect to your Unix/Xenix system, select an
empty directory, and then give the YAM/ZCOMM command: "source
zupl.t".  This will upload minirb.c, compile it, and then use
minirb to bootstrap upload the rz/sz files.
X
Once these files are on your Unix system, you can type "make".
The Makefile will list the various systems it knows how to
compile the programs for, and the command to do so (e.g.,
"make bsd").
X
The Makefile is self explanatory; just say "make".
X
Unregistered users can use our support hotline: 900-555-7836 at
$4.69 per minute.  Callers must be 18+ years of age.  Registered
users can obtain free support for problems not involving
terminal servers or third party software using email or the
regular Omen Technology phone number.
X
Rz and sz work best with comm programs that properly support
ZMODEM command and file AutoDownload (Pro-YAM and ZCOMM).
X
The "GSZ" shareware program allows ZMODEM file transfers with
DOS comm programs.  GSZ provides a "mini term function" that
supports ZMODEM AutoDownload.  GSZ (part of GSZ.ZIP) and ZCOMM
(ZCOMMEXE.ZIP, ZCOMMDOC.ZIP, ZCOMMHLP.ZIP) are available on
TeleGodzilla and other fine bulletin boards.
X
This software may be freely used to support file transfer
operations to or from duly licensed Omen Technology products.
This includes DSZ, GSZ, ZCOMM, Professional-YAM and PowerCom.
Institutions desiring to use rz/sz this way should add the
following to the sz compile line: -DCOMPL
Programs based on stolen or public domain ZMODEM materials are
not included.  Use with other commercial or shareware programs
(Crosstalk, Procomm, etc.) REQUIRES REGISTRATION.
X
Rz ans Sz are Copyrighted shareware programs.  Commercial Use of
these programs is subject to licensing conditions detailed in
the sz.c source code.  "Commercial Use" includes use of this
program to transfer files to/from any commercial or shareware
program not published by Omen Technology INC.  Please print the
"mailer.rz" file, fill out the form and return same with your
registration.
X
1.xx and 2.xx versions of rz and sz (April 1988) are Public Domain,
but lack recent enhancements and bug fixes.
X
The Man pages are formatted for those without Unix nroff.  For
best results, use less(1) (available on comp.sources.misc) as
your manual page reader.  Troff sources for the rz/sz man pages
are included with copies of Unix Professional-YAM.
X
Please check our web page www.omen.com for the latest information.
X
FTP access is now available at ftp.cs.pdx.edu pub/zmodem
directory.  This account has the latest and greatest selection
of OMEN files available for FTP.  The files in this direcotryy
are uploaded with ZMODEM directly from the Omen home system,
preserving modification dates and file contents.
X
Mar 19 1996: Rz can now write its output to standard output
(see rz.doc).
X
Jan 28 1995: Sz now accepts standard input: "ls -l | sz -"
See sz.doc.  Sz is now compiled with buffering to support
input from sources that do not allow seeks (pipes, etc.).
<<When sendng from a pipe>> the ZMODEM window size is set to
guarantee error recovery will fit within the buffer.  In
some applications it may be desireable to increase the
buffer size in the sz.c source code.
X
June 22 1994: sz -e now escapes the all ones character (0xFF).
This is useful in some terminal server applications.
Sz now understands receiver specified control character
prefixing (ZCOMM/Professional-YAM zmresc string parameter).
X
Apr 23 1994: Added -DOLD compiler flag for antique SYSV
compilers without a standard /usr/include/stdlib.h header file.
This causes rbsb.c to define char *getenv() etc. instead of
getting these definitons from stdlib.h.  You may have to fiddle
with the declarations in rbsb.c #ifdef OLD to get a clean compile.
X
Registration and support has been clarified and simplified
(see mailer.rz).
X
Feb 18 94: A bug in sz that caused constipation at the end of a
file under certain options was corrected.
X
Jan 27 1994: Minor bugfixes and improvements, documentation
improved.
X
May 16 1993: More bugfixes, POSIX support.  Tested on SCO Unix,
BSDI 1.0, and SunOS 4.1.2.  Code simplified to avoid certain
compiler brain damage.  (Some complaints about redefinitons
with some POSIX compiles.) (Void and Unsigned Long are required.)
X
Jan 2 1992: Documentation on the sz -T command has been
improved.  Please use this command and Professional-YAM to
diagnose file transfer problems before calling for support.
X
X
VMS systems are now supported with native VMS versions in
RZSZ.TLB.  The rz and sz in RZSZ.TLB support wild cards and
VMS record types.
X
New for 1989: ZMODEM compression and other compatible
extensions have been added to the rz and sz programs.
Please read the comments in the rz.c and sz.c source code
for licensing information.
X
X
In order for us to handle problem reports, we must have the
exact error messages displayed by Professional-YAM.  If
transfers do not work at all, we must have complete results of
the sz -T test procedure!  If you are not using an Omen
Technology product to talk to rz/sz and have not registered
rz/sz, contact the author of the communications program you have
purchased for support.  Some heavily marketed programs do not
properly support the XMODEM, YMODEM, and/orZMODEM protocols.
X
Chuck Forsberg WA7KGX     caf@omen.COM     http://www.omen.com
X   Omen Technology Inc      "The High Reliability Software"
Author of YMODEM, ZMODEM, Professional-YAM, ZCOMM, GSZ and DSZ
TeleGodzilla BBS: 503-617-1698  FTP: ftp.cs.pdx.edu pub/zmodem
POB 4681 Portland OR 97208     503-614-0430   FAX:503-629-0665
SHAR_EOF
chmod 0644 README ||
echo 'restore of README failed'
Wc_c="`wc -c < 'README'`"
test 5783 -eq "$Wc_c" ||
	echo 'README: original size 5783, current size' "$Wc_c"
fi
# ============= Makefile ==============
if test -f 'Makefile' -a X"$1" != X"-c"; then
	echo 'x - skipping Makefile (File already exists)'
else
echo 'x - extracting Makefile (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'Makefile' &&
# Makefile for Unix/Xenix rz and sz programs
# Some targets may not be up to date
CC=cc
OFLAG= -O
X
X
ARCFILES= COPYING README rbsb.c gz *.t minirb.c zmodem.h \
X	zm.c zmr.c crctab.c sz.c rz.c mailer.rz crc.c
X
nothing:
X	@echo
X	@echo "Please study the #ifdef's in crctab.c, rbsb.c, rz.c and sz.c,"
X	@echo "make any necessary hacks for oddball or merged SYSV/BSD systems,"
X	@echo "then type 'make SYSTEM' where SYSTEM is one of:"
X	@echo
X	@echo "	posix	POSIX compliant systems"
X	@echo "	aix	AIX systems"
X	@echo "	next	NeXtstep v3.x (POSIX)"
X	@echo "	odt	SCO Open Desktop (strict)"
X	@echo "	everest	SCO Open Desktop (elf, strict)"
X	@echo "	sysvr4	SYSTEM 5.4 Unix"
X	@echo "	sysvr3	SYSTEM 5.3 Unix with mkdir(2), COHERENT 4.2"
X	@echo "	sysv	SYSTEM 3/5 Unix"
X	@echo "	sysiii  SYS III/V  Older Unix or Xenix compilers"
X	@echo "	xenix	Xenix"
X	@echo "	x386	386 Xenix"
X	@echo "	bsd	Berkeley 4.x BSD, Ultrix, V7"
X	@echo "	tandy	Tandy 6000 Xenix"
X	@echo "	dnix	DIAB Dnix 5.2"
X	@echo "	dnix5r3	DIAB Dnix 5.3"
X	@echo "	amiga	3000UX running SVR4"
X	@echo "	POSIX	POSIX compliant systems (SCO Open Desktop, strict)"
X	@echo
X	@echo "	doc	Format the man pages with nroff"
X	@echo
X
all:doc usenet unixforum sshar shar zoo
X
usenet:doc
X	shar -c -a -n rzsz -o /tmp/rzsz -l64 \
X	  COPYING README Makefile zmodem.h zm.c rz.c rbsb.c \
X	 crc.c crctab.c minirb.c mailer.rz zmr.c *.doc gz sz.c *.t 
X
sshar:doc
X	shar -c -a -n rzsz -o /tmp/rzsz -l64 \
X	  COPYING README Makefile zmodem.h zm.c rz.c rbsb.c \
X	 crc.c crctab.c mailer.rz zmr.c *.doc gz sz.c
X
shar:doc
X	shar -c COPYING README Makefile zmodem.h zm.c \
X	 zmr.c sz.c rz.c crctab.c \
X	 mailer.rz crc.c rbsb.c minirb.c *.doc gz *.t >/tmp/rzsz.sh
X	 cp /tmp/rzsz.sh /u/t/yam
X
unixforum: shar
X	rm -f /tmp/rzsz.sh.gz
X	gzip -9 /tmp/rzsz.sh
X	cp /tmp/rzsz.sh.gz /u/t/yam
X
doc:rz.doc sz.doc crc.doc minirb.doc
X
clean:
X	rm -f *.o *.out sz sb sx zcommand zcommandi rz rb rx rc
X
minirb.doc:minirb.1
X	nroff -man minirb.1 | col  >minirb.doc
X
rz.doc:rz.1 servers.mi
X	nroff -man rz.1 | col  >rz.doc
X
sz.doc:sz.1 servers.mi
X	nroff -man sz.1 | col  >sz.doc
X
crc.doc:crc.1
X	nroff -man crc.1 | col  >crc.doc
X
zoo: doc
X	-rm -f /tmp/rzsz.zoo
X	zoo ah /tmp/rzsz COPYING README Makefile zmodem.h zm.c sz.c rz.c \
X	 mailer.rz crctab.c rbsb.c *.doc \
X	 zmr.c crc.c gz *.t minirb.c
X	touch /tmp/rzsz.zoo
X	chmod og-w /tmp/rzsz.zoo
X	mv /tmp/rzsz.zoo /u/t/yam
X	-rm -f rzsz.zip
X	zip rzsz readme mailer.rz makefile zmodem.h zm.c sz.c rz.c
X	zip rzsz crctab.c rbsb.c *.doc file_id.diz
X	zip rzsz zmr.c crc.c gz *.t minirb.c
X	mv rzsz.zip /u/t/yam
X
tag: doc 
X	-rm -f /tmp/rzsz
X	tar cvf /tmp/rzsz COPYING README Makefile zmodem.h zm.c sz.c rz.c \
X	 mailer.rz crctab.c rbsb.c *.doc \
X	 zmr.c crc.c gz *.t minirb.c rz sz crc
X	gzip -9 /tmp/rzsz
X	mv /tmp/rzsz.gz /u/t/yam/rzsz.tag
X
tar:doc
X	tar cvf /tmp/rzsz.tar COPYING README Makefile zmodem.h zm.c sz.c rz.c \
X	 mailer.rz crctab.c rbsb.c \
X	 zmr.c crc.c *.1 gz *.t minirb.c
X
tags:
X	ctags sz.c rz.c zm.c zmr.c rbsb.c
X
.PRECIOUS:rz sz
X
xenix:
X	/usr/ods30/bin/cc \
X	-I/usr/ods30/usr/include -I/usr/ods30/usr/include/sys \
X	$(CFLAGS) $(OFLAG) -s -DUSG -DNFGVMIN -DREADCHECK sz.c -lx -o sz
X	size sz; file sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X	/usr/ods30/bin/cc \
X	 -I/usr/ods30/usr/include -I/usr/ods30/usr/include/sys \
X	$(CFLAGS) $(OFLAG) -s -DUSG -DMD rz.c -o rz
X	size rz; file rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X
x386:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DMD rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DNFGVMIN -DREADCHECK sz.c -lx -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
sysv:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DMD -DOLD rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DSV -DNFGVMIN -DOLD sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
sysiii:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DOLD rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DSV -DUSG -DNFGVMIN -DOLD sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
sysvr3:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DMD=2 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DSV -DUSG -DNFGVMIN sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
sysvr4:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DMD=2 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DSV -DUSG sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
odt:
X	cc -O -strict -W2 -n -DUSG -DMD=2 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	cc -O -strict -W2 -n -DUSG -DREADCHECK sz.c -lx -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
everest:
X	cc -b elf -w 3 -O3 -DUSG -DMD=2 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	cc -b elf -w 3 -O3 -DUSG -DREADCHECK sz.c -lx -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
posix:
X	$(CC) $(CFLAGS) $(OFLAG) -DPOSIX -DMD=2 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DPOSIX sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
POSIX:
X	@echo "Well, stricter, as in *safer sex* ..."
X	$(CC) $(CFLAGS) $(OFLAG) -posix -W2 -DPOSIX -DMD=2 -DCOMPL rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -posix -W2 -DPOSIX -DCOMPL sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
X
bsd:
X	$(CC) $(CFLAGS) $(OFLAG) -DMD=2 -Dstrchr=index -DV7 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DV7 -DNFGVMIN sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
tandy:
X	$(CC) $(CFLAGS) $(OFLAGS) -n -DUSG -DMD -DT6K sz.c -lx -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X	$(CC) $(CFLAGS) $(OFLAGS) -n -DUSG -DMD -DT6K rz.c -lx -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X
dnix:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DMD rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DSV -DUSG -DNFGVMIN -DREADCHECK sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
dnix5r3:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DMD=2 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DSV -DNFGVMIN -DREADCHECK sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
X
amiga:
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DNFGVMIN -g rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) $(CFLAGS) $(OFLAG) -DUSG -DSV -DNFGVMIN -g sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
aix:
X	@echo ""
X	@echo "BAD NEWS.  We get more problem reports concerning AIX systems"
X	@echo "than all others put together, but no support from IBM."
X	@echo "Perhaps a newer version of AIX will be closer to Unix."
X	@echo ""
X	@echo "Omen Technology would appreciate working with IBM"
X	@echo "to resolve these incompatibilities."
X
next:
X	LIBS=-lposix
X	$(CC) -g -posix $(OFLAG) -DPOSIX -DMD=2 rz.c -o rz
X	size rz
X	-rm -f rb rx rc
X	ln rz rb
X	ln rz rx
X	ln rz rc
X	$(CC) -g -posix $(OFLAG) -DPOSIX sz.c -o sz
X	size sz
X	-rm -f sb sx zcommand zcommandi
X	ln sz sb
X	ln sz sx
X	ln sz zcommand
X	ln sz zcommandi
X
X
lint:
X	lint -DUSG -DSV -DOLD sz.c >/tmp/sz.fluff
X	lint -DUSG -DSV -DOLD rz.c >/tmp/rz.fluff
X
X
sz: nothing
sb: nothing
rz: nothing
rb: nothing
SHAR_EOF
chmod 0644 Makefile ||
echo 'restore of Makefile failed'
Wc_c="`wc -c < 'Makefile'`"
test 8004 -eq "$Wc_c" ||
	echo 'Makefile: original size 8004, current size' "$Wc_c"
fi
# ============= zmodem.h ==============
if test -f 'zmodem.h' -a X"$1" != X"-c"; then
	echo 'x - skipping zmodem.h (File already exists)'
else
echo 'x - extracting zmodem.h (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'zmodem.h' &&
/*
X *   Z M O D E M . H     Manifest constants for ZMODEM
X *    application to application file transfer protocol
X *    Copyright 1993 Omen Technology Inc All Rights Reserved
X */
#define ZPAD '*'	/* 052 Padding character begins frames */
#define ZDLE 030	/* Ctrl-X Zmodem escape - `ala BISYNC DLE */
#define ZDLEE (ZDLE^0100)	/* Escaped ZDLE as transmitted */
#define ZBIN 'A'	/* Binary frame indicator (CRC-16) */
#define ZHEX 'B'	/* HEX frame indicator */
#define ZBIN32 'C'	/* Binary frame with 32 bit FCS */
#define ZBINR32 'D'	/* RLE packed Binary frame with 32 bit FCS */
#define ZVBIN 'a'	/* Binary frame indicator (CRC-16) */
#define ZVHEX 'b'	/* HEX frame indicator */
#define ZVBIN32 'c'	/* Binary frame with 32 bit FCS */
#define ZVBINR32 'd'	/* RLE packed Binary frame with 32 bit FCS */
#define ZRESC	0176	/* RLE flag/escape character */
#define ZMAXHLEN 16	/* Max header information length  NEVER CHANGE */
#define ZMAXSPLEN 1024	/* Max subpacket length  NEVER CHANGE */
X
/* Frame types (see array "frametypes" in zm.c) */
#define ZRQINIT	0	/* Request receive init */
#define ZRINIT	1	/* Receive init */
#define ZSINIT 2	/* Send init sequence (optional) */
#define ZACK 3		/* ACK to above */
#define ZFILE 4		/* File name from sender */
#define ZSKIP 5		/* To sender: skip this file */
#define ZNAK 6		/* Last packet was garbled */
#define ZABORT 7	/* Abort batch transfers */
#define ZFIN 8		/* Finish session */
#define ZRPOS 9		/* Resume data trans at this position */
#define ZDATA 10	/* Data packet(s) follow */
#define ZEOF 11		/* End of file */
#define ZFERR 12	/* Fatal Read or Write error Detected */
#define ZCRC 13		/* Request for file CRC and response */
#define ZCHALLENGE 14	/* Receiver's Challenge */
#define ZCOMPL 15	/* Request is complete */
#define ZCAN 16		/* Other end canned session with CAN*5 */
#define ZFREECNT 17	/* Request for free bytes on filesystem */
#define ZCOMMAND 18	/* Command from sending program */
#define ZSTDERR 19	/* Output to standard error, data follows */
X
/* ZDLE sequences */
#define ZCRCE 'h'	/* CRC next, frame ends, header packet follows */
#define ZCRCG 'i'	/* CRC next, frame continues nonstop */
#define ZCRCQ 'j'	/* CRC next, frame continues, ZACK expected */
#define ZCRCW 'k'	/* CRC next, ZACK expected, end of frame */
#define ZRUB0 'l'	/* Translate to rubout 0177 */
#define ZRUB1 'm'	/* Translate to rubout 0377 */
X
/* zdlread return values (internal) */
/* -1 is general error, -2 is timeout */
#define GOTOR 0400
#define GOTCRCE (ZCRCE|GOTOR)	/* ZDLE-ZCRCE received */
#define GOTCRCG (ZCRCG|GOTOR)	/* ZDLE-ZCRCG received */
#define GOTCRCQ (ZCRCQ|GOTOR)	/* ZDLE-ZCRCQ received */
#define GOTCRCW (ZCRCW|GOTOR)	/* ZDLE-ZCRCW received */
#define GOTCAN	(GOTOR|030)	/* CAN*5 seen */
X
/* Byte positions within header array */
#define ZF0	3	/* First flags byte */
#define ZF1	2
#define ZF2	1
#define ZF3	0
#define ZP0	0	/* Low order 8 bits of position */
#define ZP1	1
#define ZP2	2
#define ZP3	3	/* High order 8 bits of file position */
X
/* Parameters for ZRINIT header */
#define ZRPXWN	8	/* 9th byte in header contains window size/256 */
#define ZRPXQQ	9	/* 10th to 14th bytes contain quote mask */
/* Bit Masks for ZRINIT flags byte ZF0 */
#define CANFDX	01	/* Rx can send and receive true FDX */
#define CANOVIO	02	/* Rx can receive data during disk I/O */
#define CANBRK	04	/* Rx can send a break signal */
#define CANRLE	010	/* Receiver can decode RLE */
#define CANLZW	020	/* Receiver can uncompress */
#define CANFC32	040	/* Receiver can use 32 bit Frame Check */
#define ESCCTL 0100	/* Receiver expects ctl chars to be escaped */
#define ESC8   0200	/* Receiver expects 8th bit to be escaped */
X
/* Bit Masks for ZRINIT flags byte ZF1 */
#define CANVHDR	01	/* Variable headers OK */
#define ZRRQWN	8	/* Receiver specified window size in ZRPXWN */
#define ZRRQQQ	16	/* Additional control chars to quote in ZRPXQQ	*/
#define ZRQNVH	(ZRRQWN|ZRRQQQ)	/* Variable len hdr reqd to access info */
X
/* Parameters for ZSINIT frame */
#define ZATTNLEN 32	/* Max length of attention string */
#define ALTCOFF ZF1	/* Offset to alternate canit string, 0 if not used */
/* Bit Masks for ZSINIT flags byte ZF0 */
#define TESCCTL 0100	/* Transmitter expects ctl chars to be escaped */
#define TESC8   0200	/* Transmitter expects 8th bit to be escaped */
X
/* Parameters for ZFILE frame */
/* Conversion options one of these in ZF0 */
#define ZCBIN	1	/* Binary transfer - inhibit conversion */
#define ZCNL	2	/* Convert NL to local end of line convention */
#define ZCRESUM	3	/* Resume interrupted file transfer */
/* Management include options, one of these ored in ZF1 */
#define ZMSKNOLOC	0200	/* Skip file if not present at rx */
/* Management options, one of these ored in ZF1 */
#define ZMMASK	037	/* Mask for the choices below */
#define ZMNEWL	1	/* Transfer if source newer or longer */
#define ZMCRC	2	/* Transfer if different file CRC or length */
#define ZMAPND	3	/* Append contents to existing file (if any) */
#define ZMCLOB	4	/* Replace existing file */
#define ZMNEW	5	/* Transfer if source newer */
X	/* Number 5 is alive ... */
#define ZMDIFF	6	/* Transfer if dates or lengths different */
#define ZMPROT	7	/* Protect destination file */
#define ZMCHNG	8	/* Change filename if destination exists */
/* Transport options, one of these in ZF2 */
#define ZTLZW	1	/* Lempel-Ziv compression */
#define ZTRLE	3	/* Run Length encoding */
/* Extended options for ZF3, bit encoded */
#define ZXSPARS	64	/* Encoding for sparse file operations */
#define ZCANVHDR	01	/* Variable headers OK */
/* Receiver window size override */
#define ZRWOVR 4	/* byte position for receive window override/256 */
X
/* Parameters for ZCOMMAND frame ZF0 (otherwise 0) */
#define ZCACK1	1	/* Acknowledge, then do command */
X
long rclhdr();
X
/* Globals used by ZMODEM functions */
extern Rxframeind;	/* ZBIN ZBIN32, or ZHEX type of frame */
extern Rxtype;		/* Type of header received */
extern Rxcount;		/* Count of data bytes received */
extern Rxtimeout;	/* Tenths of seconds to wait for something */
extern long Rxpos;	/* Received file position */
extern long Txpos;	/* Transmitted file position */
extern Txfcs32;		/* TURE means send binary frames with 32 bit FCS */
extern Crc32t;		/* Display flag indicating 32 bit CRC being sent */
extern Crc32;		/* Display flag indicating 32 bit CRC being received */
extern Znulls;		/* Number of nulls to send at beginning of ZDATA hdr */
extern char Attn[ZATTNLEN+1];	/* Attention string rx sends to tx on err */
extern char *Altcan;	/* Alternate canit string */
X
/* End of zmodem.h */
SHAR_EOF
chmod 0644 zmodem.h ||
echo 'restore of zmodem.h failed'
Wc_c="`wc -c < 'zmodem.h'`"
test 6577 -eq "$Wc_c" ||
	echo 'zmodem.h: original size 6577, current size' "$Wc_c"
fi
# ============= zm.c ==============
if test -f 'zm.c' -a X"$1" != X"-c"; then
	echo 'x - skipping zm.c (File already exists)'
else
echo 'x - extracting zm.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'zm.c' &&
/*
X *   Z M . C
X *    Copyright 1994 Omen Technology Inc All Rights Reserved
X *    ZMODEM protocol primitives
X *
X * Entry point Functions:
X *	zsbhdr(type, hdr) send binary header
X *	zshhdr(type, hdr) send hex header
X *	zgethdr(hdr) receive header - binary or hex
X *	zsdata(buf, len, frameend) send data
X *	zrdata(buf, len) receive data
X *	stohdr(pos) store position data in Txhdr
X *	long rclhdr(hdr) recover position offset from header
X * 
X *
X *	This version implements numerous enhancements including ZMODEM
X *	Run Length Encoding and variable length headers.  These
X *	features were not funded by the original Telenet development
X *	contract.
X * 
X *  This software may be freely used for educational (didactic
X *  only) purposes.  This software may also be freely used to
X *  support file transfer operations to or from licensed Omen
X *  Technology products.  Use with other commercial or shareware
X *  programs (Crosstalk, Procomm, etc.) REQUIRES REGISTRATION.
X *
X *  Any programs which use part or all of this software must be
X *  provided in source form with this notice intact except by
X *  written permission from Omen Technology Incorporated.
X * 
X * Use of this software for commercial or administrative purposes
X * except when exclusively limited to interfacing Omen Technology
X * products requires a per port license payment of $20.00 US per
X * port (less in quantity).  Use of this code by inclusion,
X * decompilation, reverse engineering or any other means
X * constitutes agreement to these conditions and acceptance of
X * liability to license the materials and payment of reasonable
X * legal costs necessary to enforce this license agreement.
X *
X *
X *		Omen Technology Inc
X *		Post Office Box 4681
X *		Portland OR 97208
X *
X *	This code is made available in the hope it will be useful,
X *	BUT WITHOUT ANY WARRANTY OF ANY KIND OR LIABILITY FOR ANY
X *	DAMAGES OF ANY KIND.
X *
X */
X
#ifndef CANFDX
#include "zmodem.h"
int Rxtimeout = 100;		/* Tenths of seconds to wait for something */
#endif
X
/* Globals used by ZMODEM functions */
int Rxframeind;		/* ZBIN ZBIN32, or ZHEX type of frame */
int Rxtype;		/* Type of header received */
int Rxhlen;		/* Length of header received */
int Rxcount;		/* Count of data bytes received */
char Rxhdr[ZMAXHLEN];	/* Received header */
char Txhdr[ZMAXHLEN];	/* Transmitted header */
long Rxpos;		/* Received file position */
long Txpos;		/* Transmitted file position */
int Txfcs32;		/* TURE means send binary frames with 32 bit FCS */
int Crc32t;		/* Controls 32 bit CRC being sent */
X			/* 1 == CRC32,  2 == CRC32 + RLE */
int Crc32r;		/* Indicates/controls 32 bit CRC being received */
X			/* 0 == CRC16,  1 == CRC32,  2 == CRC32 + RLE */
int Usevhdrs;		/* Use variable length headers */
int Znulls;		/* Number of nulls to send at beginning of ZDATA hdr */
char Attn[ZATTNLEN+1];	/* Attention string rx sends to tx on err */
char *Altcan;		/* Alternate canit string */
X
static lastsent;	/* Last char we sent */
X
static char *frametypes[] = {
X	"No Response to Error Correction Request",	/* -4 */
X	"No Carrier Detect",		/* -3 */
X	"TIMEOUT",		/* -2 */
X	"ERROR",		/* -1 */
#define FTOFFSET 4
X	"ZRQINIT",
X	"ZRINIT",
X	"ZSINIT",
X	"ZACK",
X	"ZFILE",
X	"ZSKIP",
X	"ZNAK",
X	"ZABORT",
X	"ZFIN",
X	"ZRPOS",
X	"ZDATA",
X	"ZEOF",
X	"ZFERR",
X	"ZCRC",
X	"ZCHALLENGE",
X	"ZCOMPL",
X	"ZCAN",
X	"ZFREECNT",
X	"ZCOMMAND",
X	"ZSTDERR",
X	"xxxxx"
#define FRTYPES 22	/* Total number of frame types in this array */
X			/*  not including psuedo negative entries */
};
X
static char badcrc[] = "Bad CRC";
X
/* Send ZMODEM binary header hdr of type type */
zsbhdr(len, type, hdr)
register char *hdr;
{
X	register int n;
X	register unsigned short crc;
X
#ifndef DSZ
X	vfile("zsbhdr: %c %d %s %lx", Usevhdrs?'v':'f', len,
X	  frametypes[type+FTOFFSET], rclhdr(hdr));
#endif
X	if (type == ZDATA)
X		for (n = Znulls; --n >=0; )
X			xsendline(0);
X
X	xsendline(ZPAD); xsendline(ZDLE);
X
X	switch (Crc32t=Txfcs32) {
X	case 2:
X		zsbh32(len, hdr, type, Usevhdrs?ZVBINR32:ZBINR32);
X		flushmo();  break;
X	case 1:
X		zsbh32(len, hdr, type, Usevhdrs?ZVBIN32:ZBIN32);  break;
X	default:
X		if (Usevhdrs) {
X			xsendline(ZVBIN);
X			zsendline(len);
X		}
X		else
X			xsendline(ZBIN);
X		zsendline(type);
X		crc = updcrc(type, 0);
X
X		for (n=len; --n >= 0; ++hdr) {
X			zsendline(*hdr);
X			crc = updcrc((0377& *hdr), crc);
X		}
X		crc = updcrc(0,updcrc(0,crc));
X		zsendline(crc>>8);
X		zsendline(crc);
X	}
X	if (type != ZDATA)
X		flushmo();
}
X
X
/* Send ZMODEM binary header hdr of type type */
zsbh32(len, hdr, type, flavour)
register char *hdr;
{
X	register int n;
X	register unsigned long crc;
X
X	xsendline(flavour); 
X	if (Usevhdrs) 
X		zsendline(len);
X	zsendline(type);
X	crc = 0xFFFFFFFFL; crc = UPDC32(type, crc);
X
X	for (n=len; --n >= 0; ++hdr) {
X		crc = UPDC32((0377 & *hdr), crc);
X		zsendline(*hdr);
X	}
X	crc = ~crc;
X	for (n=4; --n >= 0;) {
X		zsendline((int)crc);
X		crc >>= 8;
X	}
}
X
/* Send ZMODEM HEX header hdr of type type */
zshhdr(len, type, hdr)
register char *hdr;
{
X	register int n;
X	register unsigned short crc;
X
#ifndef DSZ
X	vfile("zshhdr: %c %d %s %lx", Usevhdrs?'v':'f', len,
X	  frametypes[type+FTOFFSET], rclhdr(hdr));
#endif
X	sendline(ZPAD); sendline(ZPAD); sendline(ZDLE);
X	if (Usevhdrs) {
X		sendline(ZVHEX);
X		zputhex(len);
X	}
X	else
X		sendline(ZHEX);
X	zputhex(type);
X	Crc32t = 0;
X
X	crc = updcrc(type, 0);
X	for (n=len; --n >= 0; ++hdr) {
X		zputhex(*hdr); crc = updcrc((0377 & *hdr), crc);
X	}
X	crc = updcrc(0,updcrc(0,crc));
X	zputhex(crc>>8); zputhex(crc);
X
X	/* Make it printable on remote machine */
X	sendline(015); sendline(0212);
X	/*
X	 * Uncork the remote in case a fake XOFF has stopped data flow
X	 */
X	if (type != ZFIN && type != ZACK)
X		sendline(021);
X	flushmo();
}
X
/*
X * Send binary array buf of length length, with ending ZDLE sequence frameend
X */
static char *Zendnames[] = { "ZCRCE", "ZCRCG", "ZCRCQ", "ZCRCW"};
zsdata(buf, length, frameend)
register char *buf;
{
X	register unsigned short crc;
X
#ifndef DSZ
X	vfile("zsdata: %d %s", length, Zendnames[frameend-ZCRCE&3]);
#endif
X	switch (Crc32t) {
X	case 1:
X		zsda32(buf, length, frameend);  break;
X	case 2:
X		zsdar32(buf, length, frameend);  break;
X	default:
X		crc = 0;
X		for (;--length >= 0; ++buf) {
X			zsendline(*buf); crc = updcrc((0377 & *buf), crc);
X		}
X		xsendline(ZDLE); xsendline(frameend);
X		crc = updcrc(frameend, crc);
X
X		crc = updcrc(0,updcrc(0,crc));
X		zsendline(crc>>8); zsendline(crc);
X	}
X	if (frameend == ZCRCW)
X		xsendline(XON);
X	if (frameend != ZCRCG)
X		flushmo();
}
X
zsda32(buf, length, frameend)
register char *buf;
{
X	register int c;
X	register unsigned long crc;
X
X	crc = 0xFFFFFFFFL;
X	for (;--length >= 0; ++buf) {
X		c = *buf & 0377;
X		zsendline(c);
X		crc = UPDC32(c, crc);
X	}
X	xsendline(ZDLE); xsendline(frameend);
X	crc = UPDC32(frameend, crc);
X
X	crc = ~crc;
X	for (c=4; --c >= 0;) {
X		zsendline((int)crc);  crc >>= 8;
X	}
}
X
/*
X * Receive array buf of max length with ending ZDLE sequence
X *  and CRC.  Returns the ending character or error code.
X *  NB: On errors may store length+1 bytes!
X */
zrdata(buf, length)
register char *buf;
{
X	register int c;
X	register unsigned short crc;
X	register char *end;
X	register int d;
X
X	switch (Crc32r) {
X	case 1:
X		return zrdat32(buf, length);
X	case 2:
X		return zrdatr32(buf, length);
X	}
X
X	crc = Rxcount = 0;  end = buf + length;
X	while (buf <= end) {
X		if ((c = zdlread()) & ~0377) {
crcfoo:
X			switch (c) {
X			case GOTCRCE:
X			case GOTCRCG:
X			case GOTCRCQ:
X			case GOTCRCW:
X				crc = updcrc((d=c)&0377, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = updcrc(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = updcrc(c, crc);
X				if (crc & 0xFFFF) {
X					zperr(badcrc);
X					return ERROR;
X				}
X				Rxcount = length - (end - buf);
#ifndef DSZ
X				vfile("zrdata: %d  %s", Rxcount,
X				 Zendnames[d-GOTCRCE&3]);
#endif
X				return d;
X			case GOTCAN:
X				zperr("Sender Canceled");
X				return ZCAN;
X			case TIMEOUT:
X				zperr("TIMEOUT");
X				return c;
X			default:
X				garbitch(); return c;
X			}
X		}
X		*buf++ = c;
X		crc = updcrc(c, crc);
X	}
#ifdef DSZ
X	garbitch(); 
#else
X	zperr("Data subpacket too long");
#endif
X	return ERROR;
}
X
zrdat32(buf, length)
register char *buf;
{
X	register int c;
X	register unsigned long crc;
X	register char *end;
X	register int d;
X
X	crc = 0xFFFFFFFFL;  Rxcount = 0;  end = buf + length;
X	while (buf <= end) {
X		if ((c = zdlread()) & ~0377) {
crcfoo:
X			switch (c) {
X			case GOTCRCE:
X			case GOTCRCG:
X			case GOTCRCQ:
X			case GOTCRCW:
X				d = c;  c &= 0377;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if (crc != 0xDEBB20E3) {
X					zperr(badcrc);
X					return ERROR;
X				}
X				Rxcount = length - (end - buf);
#ifndef DSZ
X				vfile("zrdat32: %d %s", Rxcount,
X				 Zendnames[d-GOTCRCE&3]);
#endif
X				return d;
X			case GOTCAN:
X				zperr("Sender Canceled");
X				return ZCAN;
X			case TIMEOUT:
X				zperr("TIMEOUT");
X				return c;
X			default:
X				garbitch(); return c;
X			}
X		}
X		*buf++ = c;
X		crc = UPDC32(c, crc);
X	}
X	zperr("Data subpacket too long");
X	return ERROR;
}
X
garbitch()
{
X	zperr("Garbled data subpacket");
}
X
/*
X * Read a ZMODEM header to hdr, either binary or hex.
X *
X *   Set Rxhlen to size of header (default 4) (valid iff good hdr)
X *  On success, set Zmodem to 1, set Rxpos and return type of header.
X *   Otherwise return negative on error.
X *   Return ERROR instantly if ZCRCW sequence, for fast error recovery.
X */
zgethdr(hdr)
char *hdr;
{
X	register int c, n, cancount;
X
X	n = Zrwindow + Baudrate;
X	Rxframeind = Rxtype = 0;
X
startover:
X	cancount = 5;
again:
X	switch (c = readline(Rxtimeout)) {
X	case 021: case 0221:
X		goto again;
X	case RCDO:
X	case TIMEOUT:
X		goto fifi;
X	case CAN:
gotcan:
X		if (--cancount <= 0) {
X			c = ZCAN; goto fifi;
X		}
X		switch (c = readline(Rxtimeout)) {
X		case TIMEOUT:
X			goto again;
X		case ZCRCW:
X			switch (readline(Rxtimeout)) {
X			case TIMEOUT:
X				c = ERROR; goto fifi;
X			case RCDO:
X				goto fifi;
X			default:
X				goto agn2;
X			}
X		case RCDO:
X			goto fifi;
X		default:
X			break;
X		case CAN:
X			if (--cancount <= 0) {
X				c = ZCAN; goto fifi;
X			}
X			goto again;
X		}
X	/* **** FALL THRU TO **** */
X	default:
agn2:
X		if ( --n == 0) {
X			c = GCOUNT;  goto fifi;
X		}
X		goto startover;
X	case ZPAD:		/* This is what we want. */
X		break;
X	}
X	cancount = 5;
splat:
X	switch (c = noxrd7()) {
X	case ZPAD:
X		goto splat;
X	case RCDO:
X	case TIMEOUT:
X		goto fifi;
X	default:
X		goto agn2;
X	case ZDLE:		/* This is what we want. */
X		break;
X	}
X
X
X	Rxhlen = 4;		/* Set default length */
X	Rxframeind = c = noxrd7();
X	switch (c) {
X	case ZVBIN32:
X		if ((Rxhlen = c = zdlread()) < 0)
X			goto fifi;
X		if (c > ZMAXHLEN)
X			goto agn2;
X		Crc32r = 1;  c = zrbhd32(hdr); break;
X	case ZBIN32:
X		if (Usevhdrs)
X			goto agn2;
X		Crc32r = 1;  c = zrbhd32(hdr); break;
X	case ZVBINR32:
X		if ((Rxhlen = c = zdlread()) < 0)
X			goto fifi;
X		if (c > ZMAXHLEN)
X			goto agn2;
X		Crc32r = 2;  c = zrbhd32(hdr); break;
X	case ZBINR32:
X		if (Usevhdrs)
X			goto agn2;
X		Crc32r = 2;  c = zrbhd32(hdr); break;
X	case RCDO:
X	case TIMEOUT:
X		goto fifi;
X	case ZVBIN:
X		if ((Rxhlen = c = zdlread()) < 0)
X			goto fifi;
X		if (c > ZMAXHLEN)
X			goto agn2;
X		Crc32r = 0;  c = zrbhdr(hdr); break;
X	case ZBIN:
X		if (Usevhdrs)
X			goto agn2;
X		Crc32r = 0;  c = zrbhdr(hdr); break;
X	case ZVHEX:
X		if ((Rxhlen = c = zgethex()) < 0)
X			goto fifi;
X		if (c > ZMAXHLEN)
X			goto agn2;
X		Crc32r = 0;  c = zrhhdr(hdr); break;
X	case ZHEX:
X		if (Usevhdrs)
X			goto agn2;
X		Crc32r = 0;  c = zrhhdr(hdr); break;
X	case CAN:
X		goto gotcan;
X	default:
X		goto agn2;
X	}
X	for (n = Rxhlen; ++n < ZMAXHLEN; )	/* Clear unused hdr bytes */
X		hdr[n] = 0;
X	Rxpos = hdr[ZP3] & 0377;
X	Rxpos = (Rxpos<<8) + (hdr[ZP2] & 0377);
X	Rxpos = (Rxpos<<8) + (hdr[ZP1] & 0377);
X	Rxpos = (Rxpos<<8) + (hdr[ZP0] & 0377);
fifi:
X	switch (c) {
X	case GOTCAN:
X		c = ZCAN;
X	/* **** FALL THRU TO **** */
X	case ZNAK:
X	case ZCAN:
X	case ERROR:
X	case TIMEOUT:
X	case RCDO:
X	case GCOUNT:
X		zperr("Got %s", frametypes[c+FTOFFSET]);
X	/* **** FALL THRU TO **** */
#ifndef DSZ
X	default:
X		if (c >= -4 && c <= FRTYPES)
X			vfile("zgethdr: %c %d %s %lx", Rxframeind, Rxhlen,
X			  frametypes[c+FTOFFSET], Rxpos);
X		else
X			vfile("zgethdr: %c %d %lx", Rxframeind, c, Rxpos);
#endif
X	}
X	/* Use variable length headers if we got one */
X	if (c >= 0 && c <= FRTYPES && Rxframeind & 040)
X		Usevhdrs = 1;
X	return c;
}
X
/* Receive a binary style header (type and position) */
zrbhdr(hdr)
register char *hdr;
{
X	register int c, n;
X	register unsigned short crc;
X
X	if ((c = zdlread()) & ~0377)
X		return c;
X	Rxtype = c;
X	crc = updcrc(c, 0);
X
X	for (n=Rxhlen; --n >= 0; ++hdr) {
X		if ((c = zdlread()) & ~0377)
X			return c;
X		crc = updcrc(c, crc);
X		*hdr = c;
X	}
X	if ((c = zdlread()) & ~0377)
X		return c;
X	crc = updcrc(c, crc);
X	if ((c = zdlread()) & ~0377)
X		return c;
X	crc = updcrc(c, crc);
X	if (crc & 0xFFFF) {
X		zperr(badcrc);
X		return ERROR;
X	}
#ifdef ZMODEM
X	Protocol = ZMODEM;
#endif
X	Zmodem = 1;
X	return Rxtype;
}
X
/* Receive a binary style header (type and position) with 32 bit FCS */
zrbhd32(hdr)
register char *hdr;
{
X	register int c, n;
X	register unsigned long crc;
X
X	if ((c = zdlread()) & ~0377)
X		return c;
X	Rxtype = c;
X	crc = 0xFFFFFFFFL; crc = UPDC32(c, crc);
#ifdef DEBUGZ
X	vfile("zrbhd32 c=%X  crc=%lX", c, crc);
#endif
X
X	for (n=Rxhlen; --n >= 0; ++hdr) {
X		if ((c = zdlread()) & ~0377)
X			return c;
X		crc = UPDC32(c, crc);
X		*hdr = c;
#ifdef DEBUGZ
X		vfile("zrbhd32 c=%X  crc=%lX", c, crc);
#endif
X	}
X	for (n=4; --n >= 0;) {
X		if ((c = zdlread()) & ~0377)
X			return c;
X		crc = UPDC32(c, crc);
#ifdef DEBUGZ
X		vfile("zrbhd32 c=%X  crc=%lX", c, crc);
#endif
X	}
X	if (crc != 0xDEBB20E3) {
X		zperr(badcrc);
X		return ERROR;
X	}
#ifdef ZMODEM
X	Protocol = ZMODEM;
#endif
X	Zmodem = 1;
X	return Rxtype;
}
X
X
/* Receive a hex style header (type and position) */
zrhhdr(hdr)
char *hdr;
{
X	register int c;
X	register unsigned short crc;
X	register int n;
X
X	if ((c = zgethex()) < 0)
X		return c;
X	Rxtype = c;
X	crc = updcrc(c, 0);
X
X	for (n=Rxhlen; --n >= 0; ++hdr) {
X		if ((c = zgethex()) < 0)
X			return c;
X		crc = updcrc(c, crc);
X		*hdr = c;
X	}
X	if ((c = zgethex()) < 0)
X		return c;
X	crc = updcrc(c, crc);
X	if ((c = zgethex()) < 0)
X		return c;
X	crc = updcrc(c, crc);
X	if (crc & 0xFFFF) {
X		zperr(badcrc); return ERROR;
X	}
X	c = readline(Rxtimeout);
X	if (c < 0)
X		return c;
X	c = readline(Rxtimeout);
#ifdef ZMODEM
X	Protocol = ZMODEM;
#endif
X	Zmodem = 1;
X	if (c < 0)
X		return c;
X	return Rxtype;
}
X
/* Send a byte as two hex digits */
zputhex(c)
register int c;
{
X	static char	digits[]	= "0123456789abcdef";
X
#ifdef DEBUGZ
X	if (Verbose>8)
X		vfile("zputhex: %02X", c);
#endif
X	sendline(digits[(c&0xF0)>>4]);
X	sendline(digits[(c)&0xF]);
}
X
/*
X * Send character c with ZMODEM escape sequence encoding.
X */
zsendline(c)
register c;
{
X	switch (c &= 0377) {
X	case 0377:
X		lastsent = c;
X		if (Zctlesc || Zsendmask[32]) {
X			xsendline(ZDLE);  c = ZRUB1;
X		}
X		xsendline(c);
X		break;
X	case ZDLE:
X		xsendline(ZDLE);  xsendline (lastsent = (c ^= 0100));
X		break;
X	case 021: case 023:
X	case 0221: case 0223:
X		xsendline(ZDLE);  c ^= 0100;  xsendline(lastsent = c);
X		break;
X	default:
X		if (((c & 0140) == 0) && (Zctlesc || Zsendmask[c & 037])) {
X			xsendline(ZDLE);  c ^= 0100;
X		}
X		xsendline(lastsent = c);
X	}
}
X
/* Decode two lower case hex digits into an 8 bit byte value */
zgethex()
{
X	register int c;
X
X	c = zgeth1();
#ifdef DEBUGZ
X	if (Verbose>8)
X		vfile("zgethex: %02X", c);
#endif
X	return c;
}
zgeth1()
{
X	register int c, n;
X
X	if ((c = noxrd7()) < 0)
X		return c;
X	n = c - '0';
X	if (n > 9)
X		n -= ('a' - ':');
X	if (n & ~0xF)
X		return ERROR;
X	if ((c = noxrd7()) < 0)
X		return c;
X	c -= '0';
X	if (c > 9)
X		c -= ('a' - ':');
X	if (c & ~0xF)
X		return ERROR;
X	c += (n<<4);
X	return c;
}
X
/*
X * Read a byte, checking for ZMODEM escape encoding
X *  including CAN*5 which represents a quick abort
X */
zdlread()
{
X	register int c;
X
again:
X	/* Quick check for non control characters */
X	if ((c = readline(Rxtimeout)) & 0140)
X		return c;
X	switch (c) {
X	case ZDLE:
X		break;
X	case 023:
X	case 0223:
X	case 021:
X	case 0221:
X		goto again;
X	default:
X		if (Zctlesc && !(c & 0140)) {
X			goto again;
X		}
X		return c;
X	}
again2:
X	if ((c = readline(Rxtimeout)) < 0)
X		return c;
X	if (c == CAN && (c = readline(Rxtimeout)) < 0)
X		return c;
X	if (c == CAN && (c = readline(Rxtimeout)) < 0)
X		return c;
X	if (c == CAN && (c = readline(Rxtimeout)) < 0)
X		return c;
X	switch (c) {
X	case CAN:
X		return GOTCAN;
X	case ZCRCE:
X	case ZCRCG:
X	case ZCRCQ:
X	case ZCRCW:
X		return (c | GOTOR);
X	case ZRUB0:
X		return 0177;
X	case ZRUB1:
X		return 0377;
X	case 023:
X	case 0223:
X	case 021:
X	case 0221:
X		goto again2;
X	default:
X		if (Zctlesc && ! (c & 0140)) {
X			goto again2;
X		}
X		if ((c & 0140) ==  0100)
X			return (c ^ 0100);
X		break;
X	}
X	if (Verbose>1)
X		zperr("Bad escape sequence %x", c);
X	return ERROR;
}
X
/*
X * Read a character from the modem line with timeout.
X *  Eat parity, XON and XOFF characters.
X */
noxrd7()
{
X	register int c;
X
X	for (;;) {
X		if ((c = readline(Rxtimeout)) < 0)
X			return c;
X		switch (c &= 0177) {
X		case XON:
X		case XOFF:
X			continue;
X		default:
X			if (Zctlesc && !(c & 0140))
X				continue;
X		case '\r':
X		case '\n':
X		case ZDLE:
X			return c;
X		}
X	}
X	/* NOTREACHED */
}
X
/* Store long integer pos in Txhdr */
stohdr(pos)
long pos;
{
X	Txhdr[ZP0] = pos;
X	Txhdr[ZP1] = pos>>8;
X	Txhdr[ZP2] = pos>>16;
X	Txhdr[ZP3] = pos>>24;
}
X
/* Recover a long integer from a header */
long
rclhdr(hdr)
register char *hdr;
{
X	register long l;
X
X	l = (hdr[ZP3] & 0377);
X	l = (l << 8) | (hdr[ZP2] & 0377);
X	l = (l << 8) | (hdr[ZP1] & 0377);
X	l = (l << 8) | (hdr[ZP0] & 0377);
X	return l;
}
X
/* End of zm.c */
SHAR_EOF
chmod 0644 zm.c ||
echo 'restore of zm.c failed'
Wc_c="`wc -c < 'zm.c'`"
test 17695 -eq "$Wc_c" ||
	echo 'zm.c: original size 17695, current size' "$Wc_c"
fi
# ============= zmr.c ==============
if test -f 'zmr.c' -a X"$1" != X"-c"; then
	echo 'x - skipping zmr.c (File already exists)'
else
echo 'x - extracting zmr.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'zmr.c' &&
/*
X * File: zmr.c
X * Copyright 1988, 1994 Omen Technology Inc All Rights Reserved
X *
X *
X * 
X * This module implements ZMODEM Run Length Encoding, an
X * extension that was not funded by the original Telenet
X * development contract.
X * 
X *  This software may be freely used for educational (didactic
X *  only) purposes.  This software may also be freely used to
X *  support file transfer operations to or from licensed Omen
X *  Technology products.  Use with other commercial or shareware
X *  programs (Crosstalk, Procomm, etc.) REQUIRES REGISTRATION.
X *
X *  Any programs which use part or all of this software must be
X *  provided in source form with this notice intact except by
X *  written permission from Omen Technology Incorporated.
X * 
X * Use of this software for commercial or administrative purposes
X * except when exclusively limited to interfacing Omen Technology
X * products requires a per port license payment of $20.00 US per
X * port (less in quantity).  Use of this code by inclusion,
X * decompilation, reverse engineering or any other means
X * constitutes agreement to these conditions and acceptance of
X * liability to license the materials and payment of reasonable
X * legal costs necessary to enforce this license agreement.
X *
X *
X *		Omen Technology Inc
X *		Post Office Box 4681
X *		Portland OR 97208
X *
X *	This code is made available in the hope it will be useful,
X *	BUT WITHOUT ANY WARRANTY OF ANY KIND OR LIABILITY FOR ANY
X *	DAMAGES OF ANY KIND.
X *
X *	ZMODEM RLE compression and decompression functions
X */
X
/* Send data subpacket RLE encoded with 32 bit FCS */
zsdar32(buf, length, frameend)
char *buf;
{
X	register int c, l, n;
X	register unsigned long crc;
X
X	crc = 0xFFFFFFFFL;  l = *buf++ & 0377;
X	if (length == 1) {
X		zsendline(l); crc = UPDC32(l, crc);
X		if (l == ZRESC) {
X			zsendline(1); crc = UPDC32(1, crc);
X		}
X	} else {
X		for (n = 0; --length >= 0; ++buf) {
X			if ((c = *buf & 0377) == l && n < 126 && length>0) {
X				++n;  continue;
X			}
X			switch (n) {
X			case 0:
X				zsendline(l);
X				crc = UPDC32(l, crc);
X				if (l == ZRESC) {
X					zsendline(0100); crc = UPDC32(0100, crc);
X				}
X				l = c; break;
X			case 1:
X				if (l != ZRESC) {
X					zsendline(l); zsendline(l);
X					crc = UPDC32(l, crc);
X					crc = UPDC32(l, crc);
X					n = 0; l = c; break;
X				}
X				/* **** FALL THRU TO **** */
X			default:
X				zsendline(ZRESC); crc = UPDC32(ZRESC, crc);
X				if (l == 040 && n < 34) {
X					n += 036;
X					zsendline(n); crc = UPDC32(n, crc);
X				}
X				else {
X					n += 0101;
X					zsendline(n); crc = UPDC32(n, crc);
X					zsendline(l); crc = UPDC32(l, crc);
X				}
X				n = 0; l = c; break;
X			}
X		}
X	}
X	xsendline(ZDLE); xsendline(frameend);
X	crc = UPDC32(frameend, crc);
X
X	crc = ~crc;
X	for (length=4; --length >= 0;) {
X		zsendline((int)crc);  crc >>= 8;
X	}
}
X
X
/* Receive data subpacket RLE encoded with 32 bit FCS */
zrdatr32(buf, length)
register char *buf;
{
X	register int c;
X	register unsigned long crc;
X	register char *end;
X	register int d;
X
X	crc = 0xFFFFFFFFL;  Rxcount = 0;  end = buf + length;
X	d = 0;	/* Use for RLE decoder state */
X	while (buf <= end) {
X		if ((c = zdlread()) & ~0377) {
crcfoo:
X			switch (c) {
X			case GOTCRCE:
X			case GOTCRCG:
X			case GOTCRCQ:
X			case GOTCRCW:
X				d = c;  c &= 0377;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if ((c = zdlread()) & ~0377)
X					goto crcfoo;
X				crc = UPDC32(c, crc);
X				if (crc != 0xDEBB20E3) {
X					zperr(badcrc);
X					return ERROR;
X				}
X				Rxcount = length - (end - buf);
#ifndef DSZ
X				vfile("zrdatr32: %d %s", Rxcount,
X				  Zendnames[d-GOTCRCE&3]);
#endif
X				return d;
X			case GOTCAN:
X				zperr("Sender Canceled");
X				return ZCAN;
X			case TIMEOUT:
X				zperr("TIMEOUT");
X				return c;
X			default:
X				zperr("Bad data subpacket");
X				return c;
X			}
X		}
X		crc = UPDC32(c, crc);
X		switch (d) {
X		case 0:
X			if (c == ZRESC) {
X				d = -1;  continue;
X			}
X			*buf++ = c;  continue;
X		case -1:
X			if (c >= 040 && c < 0100) {
X				d = c - 035; c = 040;  goto spaces;
X			}
X			if (c == 0100) {
X				d = 0;
X				*buf++ = ZRESC;  continue;
X			}
X			d = c;  continue;
X		default:
X			d -= 0100;
X			if (d < 1)
X				goto badpkt;
spaces:
X			if ((buf + d) > end)
X				goto badpkt;
X			while ( --d >= 0)
X				*buf++ = c;
X			d = 0;  continue;
X		}
X	}
badpkt:
X	zperr("Data subpacket too long");
X	return ERROR;
}
X
/* End of zmr.c */
SHAR_EOF
chmod 0644 zmr.c ||
echo 'restore of zmr.c failed'
Wc_c="`wc -c < 'zmr.c'`"
test 4514 -eq "$Wc_c" ||
	echo 'zmr.c: original size 4514, current size' "$Wc_c"
fi
# ============= sz.c ==============
if test -f 'sz.c' -a X"$1" != X"-c"; then
	echo 'x - skipping sz.c (File already exists)'
else
echo 'x - extracting sz.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'sz.c' &&
#define VERSION "3.40 02-21-95"
#define PUBDIR "/usr/spool/uucppublic"
X
/*
X **************************************************************************
X *
X * sz.c By Chuck Forsberg,  Omen Technology INC
X *    Copyright 1995 Omen Technology Inc All Rights Reserved
X * 
X *********************************************************************
X *********************************************************************
X * 
X *
X *	This version implements numerous enhancements including ZMODEM
X *	Run Length Encoding and variable length headers.  These
X *	features were not funded by the original Telenet development
X *	contract.
X * 
X * 
X * This software may be freely used for educational (didactic
X * only) purposes.  "Didactic" means it is used as a study item
X * in a course teaching the workings of computer protocols.
X * 
X * This software may also be freely used to support file transfer
X * operations to or from duly licensed Omen Technology products.
X * This includes DSZ, GSZ, ZCOMM, Professional-YAM and PowerCom.
X * Institutions desiring to use rz/sz this way should add the
X * following to the sz compile line:	-DCOMPL
X * Programs based on stolen or public domain ZMODEM materials are
X * not included.  Use with other commercial or shareware programs
X * (Crosstalk, Procomm, etc.) REQUIRES REGISTRATION.
X * 
X *
X *  Any programs which incorporate part or all of this code must be
X *  provided in source form with this notice intact except by
X *  prior written permission from Omen Technology Incorporated.
X *  This includes compiled executables of this program.
X *
X *   The .doc files and the file "mailer.rz" must also be included.
X * 
X * Use of this software for commercial or administrative purposes
X * except when exclusively limited to interfacing Omen Technology
X * products requires license payment of $20.00 US per user
X * (less in quantity, see mailer.rz).  Use of this code by
X * inclusion, decompilation, reverse engineering or any other means
X * constitutes agreement to these conditions and acceptance of
X * liability to license the materials and payment of reasonable
X * legal costs necessary to enforce this license agreement.
X *
X *
X *		Omen Technology Inc
X *		Post Office Box 4681
X *		Portland OR 97208
X *
X *	This code is made available in the hope it will be useful,
X *	BUT WITHOUT ANY WARRANTY OF ANY KIND OR LIABILITY FOR ANY
X *	DAMAGES OF ANY KIND.
X *
X *  USG UNIX (3.0) ioctl conventions courtesy Jeff Martin
X */
X
char *Copyrsz = "Copyright 1995 Omen Technology Inc All Rights Reserved";
X
char *substr();
X
#define LOGFILE "/tmp/szlog"
#define LOGFILE2 "szlog"
#include <stdio.h>
#include <signal.h>
#include <ctype.h>
#include <errno.h>
extern int errno;
#define STATIC
X
#define PATHLEN 1000
#define OK 0
#define FALSE 0
#ifdef TRUE
#undef TRUE
#endif
#define TRUE 1
#define ERROR (-1)
/* Ward Christensen / CP/M parameters - Don't change these! */
#define ENQ 005
#define CAN ('X'&037)
#define XOFF ('s'&037)
#define XON ('q'&037)
#define SOH 1
#define STX 2
#define EOT 4
#define ACK 6
#define NAK 025
#define CPMEOF 032
#define WANTCRC 0103	/* send C not NAK to get crc not checksum */
#define WANTG 0107	/* Send G not NAK to get nonstop batch xmsn */
#define TIMEOUT (-2)
#define RCDO (-3)
#define GCOUNT (-4)
#define RETRYMAX 10
X
X
#define HOWMANY 2
STATIC int Zmodem=0;		/* ZMODEM protocol requested by receiver */
unsigned Baudrate = 9600;		/* Default, set by first mode() call */
STATIC unsigned Txwindow;	/* Control the size of the transmitted window */
STATIC unsigned Txwspac;	/* Spacing between zcrcq requests */
STATIC unsigned Txwcnt;	/* Counter used to space ack requests */
STATIC long Lrxpos;	/* Receiver's last reported offset */
STATIC int errors;
char endmsg[80] = {0};	/* Possible message to display on exit */
char Zsendmask[33];	/* Additional control chars to mask */
X
#include "rbsb.c"	/* most of the system dependent stuff here */
X
#include "crctab.c"
X
STATIC int Filesleft;
STATIC long Totalleft;
X
/*
X * Attention string to be executed by receiver to interrupt streaming data
X *  when an error is detected.  A pause (0336) may be needed before the
X *  ^C (03) or after it.
X */
#ifdef READCHECK
STATIC char Myattn[] = { 0 };
#else
#ifdef USG
STATIC char Myattn[] = { 03, 0336, 0 };
#endif
#endif
X
FILE *in;
X
STATIC int Canseek = 1;	/* 1: Can seek 0: only rewind -1: neither (pipe) */
X
#ifndef TXBSIZE
#define TXBSIZE 32768
#endif
X
#define TXBMASK (TXBSIZE-1)
STATIC char Txb[TXBSIZE];		/* Circular buffer for file reads */
STATIC char *txbuf = Txb;		/* Pointer to current file segment */
STATIC long vpos = 0;		/* Number of bytes read from file */
X
STATIC char Lastrx;
STATIC char Crcflg;
STATIC int Modem2=0;		/* XMODEM Protocol - don't send pathnames */
STATIC int Restricted=0;	/* restricted; no /.. or ../ in filenames */
STATIC int Fullname=0;		/* transmit full pathname */
STATIC int Unlinkafter=0;	/* Unlink file after it is sent */
STATIC int Dottoslash=0;	/* Change foo.bar.baz to foo/bar/baz */
STATIC int firstsec;
STATIC int errcnt=0;		/* number of files unreadable */
STATIC int Skipbitch=0;
STATIC int blklen=128;		/* length of transmitted records */
STATIC int Optiong;		/* Let it rip no wait for sector ACK's */
STATIC int Eofseen;		/* EOF seen on input set by zfilbuf */
STATIC int BEofseen;		/* EOF seen on input set by fooseek */
STATIC int Totsecs;		/* total number of sectors this file */
STATIC int Filcnt=0;		/* count of number of files opened */
STATIC unsigned Rxbuflen=16384;	/* Receiver's max buffer length */
STATIC long Tframlen = 0;	/* Override for tx frame length */
STATIC int blkopt=0;		/* Override value for zmodem blklen */
STATIC int Rxflags = 0;
STATIC long bytcnt;
STATIC int Wantfcs32 = TRUE;	/* want to send 32 bit FCS */
STATIC char Lzconv;	/* Local ZMODEM file conversion request */
STATIC char Lzmanag;	/* Local ZMODEM file management request */
STATIC int Lskipnocor;
STATIC char Lztrans;
STATIC int Command;		/* Send a command, then exit. */
STATIC char *Cmdstr;		/* Pointer to the command string */
STATIC int Cmdack1;		/* Rx ACKs command, then do it */
STATIC int Exitcode;
STATIC int Test;		/* 1= Force receiver to send Attn, etc with qbf. */
X			/* 2= Character transparency test */
STATIC char *qbf=
X "The quick brown fox jumped over the lazy dog's back 1234567890\r\n";
STATIC long Lastsync;	/* Last offset to which we got a ZRPOS */
STATIC int Beenhereb4;		/* How many times we've been ZRPOS'd here */
STATIC int Ksendstr;		/* 1= Send esc-?-3-4-l to remote kermit */
STATIC char *ksendbuf = "\033[?34l";
X
STATIC jmp_buf intrjmp;	/* For the interrupt on RX CAN */
X
X
/* called by signal interrupt or terminate to clean things up */
void
bibi(n)
{
X	canit(); fflush(stdout); mode(0);
X	fprintf(stderr, "sz: caught signal %d; exiting\n", n);
X	if (n == SIGQUIT)
X		abort();
X	if (n == 99)
X		fprintf(stderr, "mode(2) in rbsb.c not implemented!!\n");
X	exit(3);
}
X
/* Called when ZMODEM gets an interrupt (^X) */
void
onintr(c)
{
X	signal(SIGINT, SIG_IGN);
X	longjmp(intrjmp, -1);
}
X
STATIC int Zctlesc;	/* Encode control characters */
STATIC int Nozmodem = 0;	/* If invoked as "sb" */
STATIC char *Progname = "sz";
STATIC int Zrwindow = 1400;	/* RX window size (controls garbage count) */
X
/*
X * Log an error
X */
/*VARARGS1*/
void
zperr(s,p,u)
char *s, *p, *u;
{
X	if (Verbose <= 0)
X		return;
X	fprintf(stderr, "Retry %d: ", errors);
X	fprintf(stderr, s, p, u);
X	fprintf(stderr, "\n");
}
X
#include "zm.c"
#include "zmr.c"
X
main(argc, argv)
char *argv[];
{
X	register char *cp;
X	register npats;
X	char **patts;
X
X	if ((cp = getenv("ZNULLS")) && *cp)
X		Znulls = atoi(cp);
X	if ((cp=getenv("SHELL")) && (substr(cp, "rsh") || substr(cp, "rksh")))
X		Restricted=TRUE;
X	inittty();
X	chkinvok(argv[0]);
X
X	Rxtimeout = 600;
X	npats=0;
X	if (argc<2)
X		usage();
X	while (--argc) {
X		cp = *++argv;
X		if (*cp++ == '-' && *cp) {
X			while ( *cp) {
X				if (isdigit(*cp)) {
X					++cp;  continue;
X				}
X				switch(*cp++) {
X				case '\\':
X					 *cp = toupper(*cp);  continue;
X				case '+':
X					Lzmanag = ZMAPND; break;
X				case 'a':
X					if (Nozmodem || Modem2)
X						usage();
X					Lzconv = ZCNL;  break;
X				case 'b':
X					Lzconv = ZCBIN; break;
X				case 'c':
X					Lzmanag = ZMCHNG;  break;
X				case 'd':
X					++Dottoslash;
X					/* **** FALL THROUGH TO **** */
X				case 'f':
X					Fullname=TRUE; break;
X		                case 'g' :
X					Ksendstr = TRUE; break;
X				case 'e':
X					Zctlesc = 1; break;
X				case 'k':
X					blklen=1024; break;
X				case 'L':
X					if (isdigit(*cp))
X						blkopt = atoi(cp);
X					else {
X						if (--argc < 1)
X							usage();
X						blkopt = atoi(*++argv);
X					}
X					if (blkopt<24 || blkopt>1024)
X						usage();
X					break;
X				case 'l':
X					if (isdigit(*cp))
X						Tframlen = atol(cp);
X					else {
X						if (--argc < 1)
X							usage();
X						Tframlen = atol(*++argv);
X					}
X					if (Tframlen<32 || Tframlen>65535L)
X						usage();
X					break;
X				case 'N':
X					Lzmanag = ZMNEWL;  break;
X				case 'n':
X					Lzmanag = ZMNEW;  break;
X				case 'o':
X					Wantfcs32 = FALSE; break;
X				case 'p':
X					Lzmanag = ZMPROT;  break;
X				case 'r':
X					if (Lzconv == ZCRESUM)
X						Lzmanag = (Lzmanag & ZMMASK) | ZMCRC;
X					Lzconv = ZCRESUM; break;
X				case 'T':
X					chartest(1); chartest(2);
X					mode(0);  exit(0);
X				case 'u':
X					++Unlinkafter; break;
X				case 'v':
X					++Verbose; break;
X				case 'w':
X					if (isdigit(*cp))
X						Txwindow = atoi(cp);
X					else {
X						if (--argc < 1)
X							usage();
X						Txwindow = atoi(*++argv);
X					}
X					if (Txwindow < 256)
X						Txwindow = 256;
X					Txwindow = (Txwindow/64) * 64;
X					Txwspac = Txwindow/4;
X					if (blkopt > Txwspac
X					 || (!blkopt && Txwspac < 1024))
X						blkopt = Txwspac;
X					break;
X				case 'x':
X					Skipbitch = 1;  break;
X				case 'Y':
X					Lskipnocor = TRUE;
X					/* **** FALLL THROUGH TO **** */
X				case 'y':
X					Lzmanag = ZMCLOB; break;
X				case 'Z':
X				case 'z':
X					Lztrans = ZTRLE;  break;
X				default:
X					usage();
X				}
X			}
X		}
X		else if (Command) {
X			if (argc != 1) {
X				usage();
X			}
X			Cmdstr = *argv;
X		}
X		else if ( !npats && argc>0) {
X			if (argv[0][0]) {
X				npats=argc;
X				patts=argv;
X			}
X		}
X	}
X	if (npats < 1 && !Command && !Test) 
X		usage();
X	if (Verbose) {
X		if (freopen(LOGFILE, "a", stderr)==NULL)
X			if (freopen(LOGFILE2, "a", stderr)==NULL) {
X				printf("Can't open log file!");
X				exit(2);
X			}
X		setbuf(stderr, NULL);
X	}
X	vfile("%s %s for %s tty=%s\n", Progname, VERSION, OS, Nametty);
X
X	mode(3);
X
X	if (signal(SIGINT, bibi) == SIG_IGN) {
X		signal(SIGINT, SIG_IGN); signal(SIGKILL, SIG_IGN);
X	} else {
X		signal(SIGINT, bibi); signal(SIGKILL, bibi);
X	}
#ifdef SIGQUIT
X	signal(SIGQUIT, SIG_IGN);
#endif
#ifdef SIGTERM
X	signal(SIGTERM, bibi);
#endif
X
X	countem(npats, patts);
X
X	if (!Modem2 && !Nozmodem) {
X		if (Ksendstr)
X			printf(ksendbuf);
X		printf("rz\r");  fflush(stdout);
X		stohdr(0x80L);	/* Show we can var header */
X		if (Command)
X			Txhdr[ZF0] = ZCOMMAND;
X		zshhdr(4, ZRQINIT, Txhdr);
X	}
X	fflush(stdout);
X
X
X	if (Command) {
X		if (getzrxinit()) {
X			Exitcode=1; canit();
X		}
X		else if (zsendcmd(Cmdstr, 1+strlen(Cmdstr))) {
X			Exitcode=1; canit();
X		}
X	} else if (wcsend(npats, patts)==ERROR) {
X		Exitcode=1;
X		canit();
X	}
X	if (endmsg[0]) {
X		printf("\r\n%s: %s\r\n", Progname, endmsg);
X		if (Verbose)
X			fprintf(stderr, "%s\r\n", endmsg);
X	}
X	printf("%s %s finished.\r\n", Progname, VERSION);
X	fflush(stdout);
X	mode(0);
X	if(errcnt || Exitcode)
X		exit(1);
X
#ifndef REGISTERED
X	/* Removing or disabling this code without registering is theft */
X	if (!Usevhdrs)  {
X		printf("\n\n\nPlease read the License Agreement in sz.doc\n");
X		fflush(stdout);
X		sleep(10);
X	}
#endif
X	exit(0);
X	/*NOTREACHED*/
}
X
/* Say "bibi" to the receiver, try to do it cleanly */
void
saybibi()
{
X	for (;;) {
X		stohdr(0L);		/* CAF Was zsbhdr - minor change */
X		zshhdr(4, ZFIN, Txhdr);	/*  to make debugging easier */
X		switch (zgethdr(Rxhdr)) {
X		case ZFIN:
X			sendline('O'); sendline('O'); flushmo();
X		case ZCAN:
X		case TIMEOUT:
X			return;
X		}
X	}
}
X
wcsend(argc, argp)
char *argp[];
{
X	register n;
X
X	Crcflg=FALSE;
X	firstsec=TRUE;
X	bytcnt = -1;
X	vfile("wcsend: argc=%d", argc);
X	if (Nozmodem) {
X		printf("Start your local YMODEM receive.     ");
X		fflush(stdout);
X	}
X	for (n=0; n<argc; ++n) {
X		Totsecs = 0;
X		if (wcs(argp[n])==ERROR)
X			return ERROR;
X	}
X	Totsecs = 0;
X	if (Filcnt==0) {	/* bitch if we couldn't open ANY files */
X		if (!Nozmodem && !Modem2) {
X			Command = TRUE;
X			Cmdstr = "echo \"sz: Can't open any requested files\"";
X			if (getnak()) {
X				Exitcode=1; canit();
X			}
X			if (!Zmodem)
X				canit();
X			else if (zsendcmd(Cmdstr, 1+strlen(Cmdstr))) {
X				Exitcode=1; canit();
X			}
X			Exitcode = 1; return OK;
X		}
X		canit();
X		sprintf(endmsg, "Can't open any requested files");
X		return ERROR;
X	}
X	if (Zmodem)
X		saybibi();
X	else if ( !Modem2)
X		wctxpn("");
X	return OK;
}
X
wcs(oname)
char *oname;
{
X	register c;
X	register char *p;
X	struct stat f;
X	char name[PATHLEN];
X
X	strcpy(name, oname);
X	vfile("wcs: name=%s", name);
X
X	if (Restricted) {
X		/* restrict pathnames to current tree or uucppublic */
X		if ( substr(name, "../")
X		 || (name[0]== '/' && strncmp(name, PUBDIR, strlen(PUBDIR))) ) {
X			canit();  sprintf(endmsg,"Security Violation");
X			return ERROR;
X		}
X	}
X
#ifdef TXBSIZE
X	if ( !strcmp(name, "-")) {
X		if ((p = getenv("ONAME")) && *p)
X			strcpy(name, p);
X		else
X			sprintf(name, "s%d.sz", getpid());
X		in = stdin;
X	}
X	else
#endif
X		in=fopen(name, "r");
X
X	if (in==NULL) {
X		++errcnt;
X		return OK;	/* pass over it, there may be others */
X	}
X	BEofseen = Eofseen = 0;  vpos = 0;
X
X	/* Check for directory */
X	fstat(fileno(in), &f);
#ifdef POSIX
X	if (S_ISDIR(f.st_mode))
#else
X	c = f.st_mode & S_IFMT;
X	if (c == S_IFDIR || c == S_IFBLK)
#endif
X	{
X		fclose(in);
X		return OK;
X	}
X
X	++Filcnt;
X	switch (wctxpn(name)) {
X	case ZSKIP:
X	case ZFERR:
X		return OK;
X	case OK:
X		break;
X	default:
X		return ERROR;
X	}
X	if (!Zmodem && wctx(f.st_size))
X		return ERROR;
X
X	if (Unlinkafter)
X		unlink(oname);
X
X	return 0;
}
X
/*
X * generate and transmit pathname block consisting of
X *  pathname (null terminated),
X *  file length, mode time and file mode in octal
X *  as provided by the Unix fstat call.
X *  N.B.: modifies the passed name, may extend it!
X */
wctxpn(name)
char *name;
{
X	register char *p, *q;
X	char name2[PATHLEN];
X	struct stat f;
X
X	vfile("wctxpn: %s", name);
X	if (Modem2) {
X		if (*name && fstat(fileno(in), &f)!= -1) {
X			fprintf(stderr, "Sending %s, %ld XMODEM blocks. ",
X			  name, (127+f.st_size)>>7);
X		}
X		printf("Start your local XMODEM receive.     ");
X		fflush(stdout);
X		return OK;
X	}
X	zperr("Awaiting pathname nak for %s", *name?name:"<END>");
X	if ( !Zmodem)
X		if (getnak())
X			return ERROR;
X
X	q = (char *) 0;
X	if (Dottoslash) {		/* change . to . */
X		for (p=name; *p; ++p) {
X			if (*p == '/')
X				q = p;
X			else if (*p == '.')
X				*(q=p) = '/';
X		}
X		if (q && strlen(++q) > 8) {	/* If name>8 chars */
X			q += 8;			/*   make it .ext */
X			strcpy(name2, q);	/* save excess of name */
X			*q = '.';
X			strcpy(++q, name2);	/* add it back */
X		}
X	}
X
X	for (p=name, q=txbuf ; *p; )
X		if ((*q++ = *p++) == '/' && !Fullname)
X			q = txbuf;
X	*q++ = 0;
X	p=q;
X	while (q < (txbuf + 1024))
X		*q++ = 0;
X	if (*name) {
X		if (fstat(fileno(in), &f)!= -1)
X			sprintf(p, "%lu %lo %o 3 %d %ld", f.st_size, f.st_mtime,
X			  f.st_mode, Filesleft, Totalleft);
X		Totalleft -= f.st_size;
X	}
X	if (--Filesleft <= 0)
X		Filesleft = Totalleft = 0;
X	if (Totalleft < 0)
X		Totalleft = 0;
X
X	/* force 1k blocks if name won't fit in 128 byte block */
X	if (txbuf[125])
X		blklen=1024;
X	else {		/* A little goodie for IMP/KMD */
X		txbuf[127] = (f.st_size + 127) >>7;
X		txbuf[126] = (f.st_size + 127) >>15;
X	}
X	vfile("wctxpn: %s", p);
X	if (Zmodem)
X		return zsendfile(txbuf, 1+strlen(p)+(p-txbuf));
X	if (wcputsec(txbuf, 0, 128)==ERROR)
X		return ERROR;
X	return OK;
}
X
getnak()
{
X	register firstch;
X
X	Lastrx = 0;
X	for (;;) {
X		switch (firstch = readline(800)) {
X		case ZPAD:
X			if (getzrxinit())
X				return ERROR;
X			return FALSE;
X		case TIMEOUT:
X			sprintf(endmsg, "Timeout waiting for ZRINIT");
X			return TRUE;
X		case WANTG:
#ifdef MODE2OK
X			mode(2);	/* Set cbreak, XON/XOFF, etc. */
#endif
X			Optiong = TRUE;
X			blklen=1024;
X		case WANTCRC:
X			Crcflg = TRUE;
X		case NAK:
X			return FALSE;
X		case CAN:
X			if ((firstch = readline(20)) == CAN && Lastrx == CAN) {
X				sprintf(endmsg, "Got CAN waiting to send file");
X				return TRUE;
X			}
X		default:
X			break;
X		}
X		Lastrx = firstch;
X	}
}
X
X
wctx(flen)
long flen;
{
X	register int thisblklen;
X	register int sectnum, attempts, firstch;
X	long charssent;
X
X	charssent = 0;  firstsec=TRUE;  thisblklen = blklen;
X	vfile("wctx:file length=%ld", flen);
X
X	while ((firstch=readline(Rxtimeout))!=NAK && firstch != WANTCRC
X	  && firstch != WANTG && firstch!=TIMEOUT && firstch!=CAN)
X		;
X	if (firstch==CAN) {
X		zperr("Receiver CANcelled");
X		return ERROR;
X	}
X	if (firstch==WANTCRC)
X		Crcflg=TRUE;
X	if (firstch==WANTG)
X		Crcflg=TRUE;
X	sectnum=0;
X	for (;;) {
X		if (flen <= (charssent + 896L))
X			thisblklen = 128;
X		if ( !filbuf(txbuf, thisblklen))
X			break;
X		if (wcputsec(txbuf, ++sectnum, thisblklen)==ERROR)
X			return ERROR;
X		charssent += thisblklen;
X	}
X	fclose(in);
X	attempts=0;
X	do {
X		purgeline();
X		sendline(EOT);
X		flushmo();
X		++attempts;
X	}
X		while ((firstch=(readline(Rxtimeout)) != ACK) && attempts < RETRYMAX);
X	if (attempts == RETRYMAX) {
X		zperr("No ACK on EOT");
X		return ERROR;
X	}
X	else
X		return OK;
}
X
wcputsec(buf, sectnum, cseclen)
char *buf;
int sectnum;
int cseclen;	/* data length of this sector to send */
{
X	register checksum, wcj;
X	register char *cp;
X	unsigned oldcrc;
X	int firstch;
X	int attempts;
X
X	firstch=0;	/* part of logic to detect CAN CAN */
X
X	if (Verbose>1)
X		fprintf(stderr, "Sector %3d %2dk\n", Totsecs, Totsecs/8 );
X	for (attempts=0; attempts <= RETRYMAX; attempts++) {
X		Lastrx= firstch;
X		sendline(cseclen==1024?STX:SOH);
X		sendline(sectnum);
X		sendline(-sectnum -1);
X		oldcrc=checksum=0;
X		for (wcj=cseclen,cp=buf; --wcj>=0; ) {
X			sendline(*cp);
X			oldcrc=updcrc((0377& *cp), oldcrc);
X			checksum += *cp++;
X		}
X		if (Crcflg) {
X			oldcrc=updcrc(0,updcrc(0,oldcrc));
X			sendline((int)oldcrc>>8);
X			sendline((int)oldcrc);
X		}
X		else
X			sendline(checksum);
X		flushmo();
X
X		if (Optiong) {
X			firstsec = FALSE; return OK;
X		}
X		firstch = readline(Rxtimeout);
gotnak:
X		switch (firstch) {
X		case CAN:
X			if(Lastrx == CAN) {
cancan:
X				zperr("Cancelled");  return ERROR;
X			}
X			break;
X		case TIMEOUT:
X			zperr("Timeout on sector ACK"); continue;
X		case WANTCRC:
X			if (firstsec)
X				Crcflg = TRUE;
X		case NAK:
X			zperr("NAK on sector"); continue;
X		case ACK: 
X			firstsec=FALSE;
X			Totsecs += (cseclen>>7);
X			return OK;
X		case ERROR:
X			zperr("Got burst for sector ACK"); break;
X		default:
X			zperr("Got %02x for sector ACK", firstch); break;
X		}
X		for (;;) {
X			Lastrx = firstch;
X			if ((firstch = readline(Rxtimeout)) == TIMEOUT)
X				break;
X			if (firstch == NAK || firstch == WANTCRC)
X				goto gotnak;
X			if (firstch == CAN && Lastrx == CAN)
X				goto cancan;
X		}
X	}
X	zperr("Retry Count Exceeded");
X	return ERROR;
}
X
/* fill buf with count chars padding with ^Z for CPM */
filbuf(buf, count)
register char *buf;
{
X	register m;
X
X	m = read(fileno(in), buf, count);
X	if (m <= 0)
X		return 0;
X	while (m < count)
X		buf[m++] = 032;
X	return count;
}
X
/* Fill buffer with blklen chars */
zfilbuf()
{
X	int n;
X
#ifdef TXBSIZE
X	vfile("zfilbuf: bytcnt =%lu vpos=%lu blklen=%d", bytcnt, vpos, blklen);
X	/* We assume request is within buffer, or just beyond */
X	txbuf = Txb + (bytcnt & TXBMASK);
X	if (vpos <= bytcnt) {
X		n = fread(txbuf, 1, blklen, in);
X
X		vpos += n;
X		if (n < blklen)
X			Eofseen = 1;
X		vfile("zfilbuf: n=%d vpos=%lu Eofseen=%d", n, vpos, Eofseen);
X		return n;
X	}
X	if (vpos >= (bytcnt+blklen))
X		return blklen;
X	/* May be a short block if crash recovery etc. */
X	Eofseen = BEofseen;
X	return (vpos - bytcnt);
#else
X	n = fread(txbuf, 1, blklen, in);
X	if (n < blklen) {
X		Eofseen = 1;
X		vfile("zfilbuf: n=%d vpos=%lu Eofseen=%d", n, vpos, Eofseen);
X	}
X	return n;
#endif
}
X
#ifdef TXBSIZE
/* Replacement for brain damaged fseek function.  Returns 0==success */
fooseek(fptr, pos, whence)
FILE *fptr;
long pos;
{
X	long m, n;
X
X	vfile("fooseek: pos =%lu vpos=%lu Canseek=%d", pos, vpos, Canseek);
X	/* Seek offset < current buffer */
X	if (pos < (vpos -TXBSIZE +1024)) {
X		BEofseen = 0;
X		if (Canseek > 0) {
X			vpos = pos & ~TXBMASK;
X			if (vpos >= pos)
X				vpos -= TXBSIZE;
X			if (fseek(fptr, vpos, 0))
X				return 1;
X		}
X		else if (Canseek == 0) {
X			if (fseek(fptr, vpos = 0L, 0))
X				return 1;
X		} else
X			return 1;
X		while (vpos < pos) {
X			n = fread(Txb, 1, TXBSIZE, fptr);
X			vpos += n;
X			vfile("n=%d vpos=%ld", n, vpos);
X			if (n < TXBSIZE) {
X				BEofseen = 1;
X				break;
X			}
X		}
X		vfile("vpos=%ld", vpos);
X		return 0;
X	}
X	/* Seek offset > current buffer (Crash Recovery, etc.) */
X	if (pos > vpos) {
X		if (Canseek)
X			if (fseek(fptr, vpos = (pos & ~TXBMASK), 0))
X				return 1;
X		while (vpos <= pos) {
X			txbuf = Txb + (vpos & TXBMASK);
X			m = TXBSIZE - (vpos & TXBMASK);
X			vfile("m=%ld vpos=%ld", m,vpos);
X				n = fread(txbuf, 1, m, fptr);
X			vfile("n=%ld vpos=%ld", n,vpos);
X			vpos += n;
X			vfile("bo=%d m=%ld vpos=%ld", txbuf-Txb,m,vpos);
X			if (n < m) {
X				BEofseen = 1;
X				break;
X			}
X		}
X		return 0;
X	}
X	/* Seek offset is within current buffer */
X	vfile("within buffer: vpos=%ld", vpos);
X	return 0;
}
#define fseek fooseek
#endif
X
X
/*
X * substr(string, token) searches for token in string s
X * returns pointer to token within string if found, NULL otherwise
X */
char *
substr(s, t)
register char *s,*t;
{
X	register char *ss,*tt;
X	/* search for first char of token */
X	for (ss=s; *s; s++)
X		if (*s == *t)
X			/* compare token with substring */
X			for (ss=s,tt=t; ;) {
X				if (*tt == 0)
X					return s;
X				if (*ss++ != *tt++)
X					break;
X			}
X	return NULL;
}
X
char *usinfo[] = {
X	"Send Files and Commands with ZMODEM/YMODEM/XMODEM Protocol\n",
X	"Usage:	sz [-+abcdefgklLnNuvwxyYZ] [-] file ...",
X	"\t	zcommand [-egv] COMMAND",
X	"\t	zcommandi [-egv] COMMAND",
X	"\t	sb [-adfkuv] [-] file ...",
X	"\t	sx [-akuv] [-] file",
X	""
};
X
usage()
{
X	char **pp;
X
X	fprintf(stderr, "\n%s %s for %s by Chuck Forsberg, Omen Technology INC\n",
X	 Progname, VERSION, OS);
X	fprintf(stderr, "\t\t\042The High Reliability Software\042\n");
X	for (pp=usinfo; **pp; ++pp)
X		fprintf(stderr, "%s\n", *pp);
X	fprintf(stderr,"\nCopyright (c) 1995 Omen Technology INC All Rights Reserved\n");
X	fprintf(stderr,
X	 "See sz.doc for option descriptions and licensing information.\n\n");
X	fprintf(stderr,
X	"This program is designed to talk to terminal programs,\nnot to be called by one.\n");
X	fprintf(stderr,
X	"\nTechnical support hotline: 900-555-7836 (1-900-555-RTFM) $4.69/min.\n\n");
X	exit(3);
}
X
/*
X * Get the receiver's init parameters
X */
getzrxinit()
{
X	register n;
X	struct stat f;
X
X	for (n=10; --n>=0; ) {
X		
X		switch (zgethdr(Rxhdr)) {
X		case ZCHALLENGE:	/* Echo receiver's challenge numbr */
X			stohdr(Rxpos);
X			zshhdr(4, ZACK, Txhdr);
X			continue;
X		case ZCOMMAND:		/* They didn't see out ZRQINIT */
X			stohdr(0L);
X			zshhdr(4, ZRQINIT, Txhdr);
X			continue;
X		case ZRINIT:
X			if (Rxhlen==4 && (Rxhdr[ZF1] & ZRQNVH)) {
X				stohdr(0x80L);	/* Show we can var header */
X				zshhdr(4, ZRQINIT, Txhdr);
X				continue;
X			}
X			Rxflags = 0377 & Rxhdr[ZF0];
#if COMPL
X			Usevhdrs = 1;
#else
X			Usevhdrs = Rxhdr[ZF1] & CANVHDR;
#endif
X			Txfcs32 = (Wantfcs32 && (Rxflags & CANFC32));
X			Zctlesc |= Rxflags & TESCCTL;
X			if (Rxhdr[ZF1] & ZRRQQQ)	/* Escape ctrls */
X				initzsendmsk(Rxhdr+ZRPXQQ);
X			Rxbuflen = (0377 & Rxhdr[ZP0])+((0377 & Rxhdr[ZP1])<<8);
X			if ( !(Rxflags & CANFDX))
X				Txwindow = 0;
X			vfile("Rxbuflen=%d Tframlen=%ld", Rxbuflen, Tframlen);
X			signal(SIGINT, SIG_IGN);
#ifdef MODE2OK
X			mode(2);	/* Set cbreak, XON/XOFF, etc. */
#endif
X
#ifndef READCHECK
#ifndef USG
X			/* Use 1024 byte frames if no sample/interrupt */
X			if (Rxbuflen < 32 || Rxbuflen > 1024) {
X				Rxbuflen = 1024;
X				vfile("Rxbuflen=%d", Rxbuflen);
X			}
#endif
#endif
X
X			/* Override to force shorter frame length */
X			if (Rxbuflen && (Rxbuflen>Tframlen) && (Tframlen>=32))
X				Rxbuflen = Tframlen;
X			if ( !Rxbuflen && (Tframlen>=32))
X				Rxbuflen = Tframlen;
X			vfile("Rxbuflen=%d", Rxbuflen);
X
X
X			/*
X			 * If input is not a regular file, force ACK's to
X			 *  prevent running beyond the buffer limits
X			 */
X			if ( !Command) {
X				fstat(fileno(in), &f);
X				if (
#ifdef POSIX
X				    !S_ISREG(f.st_mode)
#else
X				    (f.st_mode & S_IFMT) != S_IFREG
#endif
X				    ) {
X					Canseek = -1;
X					f.st_size = 0;
X					f.st_mtime = 0;
#ifdef TXBSIZE
X					Txwindow = TXBSIZE - 1024;
X					Txwspac = TXBSIZE/4;
#else
X					sprintf(endmsg, "Can't seek on input");
X					return ERROR;
#endif
X				}
X			}
X
X			/* Set initial subpacket length */
X			if (blklen < 1024) {	/* Command line override? */
X				if (Baudrate > 300)
X					blklen = 256;
X				if (Baudrate > 1200)
X					blklen = 512;
X				if (Baudrate > 2400)
X					blklen = 1024;
X				if (Baudrate < 300)
X					blklen = 1024;
X			}
X			if (Rxbuflen && blklen>Rxbuflen)
X				blklen = Rxbuflen;
X			if (blkopt && blklen > blkopt)
X				blklen = blkopt;
X			vfile("Rxbuflen=%d blklen=%d", Rxbuflen, blklen);
X			vfile("Txwindow = %u Txwspac = %d", Txwindow, Txwspac);
X
X
X			if (Lztrans == ZTRLE && (Rxflags & CANRLE))
X				Txfcs32 = 2;
X			else
X				Lztrans = 0;
X
X			return (sendzsinit());
X		case ZCAN:
X		case TIMEOUT:
X			return ERROR;
X		case ZRQINIT:
X			if (Rxhdr[ZF0] == ZCOMMAND)
X				continue;
X		default:
X			zshhdr(4, ZNAK, Txhdr);
X			continue;
X		}
X	}
X	return ERROR;
}
X
/* Send send-init information */
sendzsinit()
{
X	register c;
X
X	if (Myattn[0] == '\0' && (!Zctlesc || (Rxflags & TESCCTL)))
X		return OK;
X	errors = 0;
X	for (;;) {
X		stohdr(0L);
#ifdef ALTCANOFF
X		Txhdr[ALTCOFF] = ALTCANOFF;
#endif
X		if (Zctlesc) {
X			Txhdr[ZF0] |= TESCCTL; zshhdr(4, ZSINIT, Txhdr);
X		}
X		else
X			zsbhdr(4, ZSINIT, Txhdr);
X		zsdata(Myattn, ZATTNLEN, ZCRCW);
X		c = zgethdr(Rxhdr);
X		switch (c) {
X		case ZCAN:
X			return ERROR;
X		case ZACK:
X			return OK;
X		default:
X			if (++errors > 19)
X				return ERROR;
X			continue;
X		}
X	}
}
X
/* Send file name and related info */
zsendfile(buf, blen)
char *buf;
{
X	register c;
X	register unsigned long crc;
X	long lastcrcrq = -1;
X
X	for (errors=0; ++errors<11;) {
X		Txhdr[ZF0] = Lzconv;	/* file conversion request */
X		Txhdr[ZF1] = Lzmanag;	/* file management request */
X		if (Lskipnocor)
X			Txhdr[ZF1] |= ZMSKNOLOC;
X		Txhdr[ZF2] = Lztrans;	/* file transport request */
X		Txhdr[ZF3] = 0;
X		zsbhdr(4, ZFILE, Txhdr);
X		zsdata(buf, blen, ZCRCW);
again:
X		c = zgethdr(Rxhdr);
X		switch (c) {
X		case ZRINIT:
X			while ((c = readline(50)) > 0)
X				if (c == ZPAD) {
X					goto again;
X				}
X			continue;
X		case ZCAN:
X		case TIMEOUT:
X		case ZABORT:
X		case ZFIN:
X			sprintf(endmsg, "Got %s on pathname", frametypes[c+FTOFFSET]);
X			return ERROR;
X		default:
X			sprintf(endmsg, "Got %d frame type on pathname", c);
X			continue;
X		case ERROR:
X		case ZNAK:
X			continue;
X		case ZCRC:
X			if (Rxpos != lastcrcrq) {
X				lastcrcrq = Rxpos;
X				crc = 0xFFFFFFFFL;
X				if (Canseek >= 0) {
X					fseek(in, 0L, 0);
X					while (((c = getc(in)) != EOF) && --lastcrcrq)
X						crc = UPDC32(c, crc);
X					crc = ~crc;
X					clearerr(in);	/* Clear possible EOF */
X					lastcrcrq = Rxpos;
X				}
X			}
X			stohdr(crc);
X			zsbhdr(4, ZCRC, Txhdr);
X			goto again;
X		case ZFERR:
X		case ZSKIP:
X			if (Skipbitch)
X				++errcnt;
X			sprintf(endmsg, "File skipped by receiver request");
X			fclose(in); return c;
X		case ZRPOS:
X			/*
X			 * Suppress zcrcw request otherwise triggered by
X			 * lastyunc==bytcnt
X			 */
X			if (fseek(in, Rxpos, 0))
X				return ERROR;
X			Lastsync = (bytcnt = Txpos = Lrxpos = Rxpos) -1;
X			return zsendfdata();
X		}
X	}
X	fclose(in); return ERROR;
}
X
/* Send the data in the file */
zsendfdata()
{
X	register c, e, n;
X	register newcnt;
X	register long tcount = 0;
X	int junkcount;		/* Counts garbage chars received by TX */
X	static int tleft = 6;	/* Counter for test mode */
X
X	junkcount = 0;
X	Beenhereb4 = FALSE;
somemore:
X	if (setjmp(intrjmp)) {
waitack:
X		junkcount = 0;
X		c = getinsync(0);
gotack:
X		switch (c) {
X		default:
X		case ZCAN:
X			fclose(in);
X			return ERROR;
X		case ZRINIT:
X			fclose(in);
X			return ZSKIP;
X		case ZSKIP:
X			if (Skipbitch)
X				++errcnt;
X			fclose(in);
X			return c;
X		case ZACK:
X		case ZRPOS:
X			break;
X		}
#ifdef READCHECK
X		/*
X		 * If the reverse channel can be tested for data,
X		 *  this logic may be used to detect error packets
X		 *  sent by the receiver, in place of setjmp/longjmp
X		 *  rdchk(Tty) returns non 0 if a character is available
X		 */
X		while (rdchk(Tty)) {
#ifdef EATSIT
X			switch (checked)
#else
X			switch (readline(1))
#endif
X			{
X			case CAN:
X			case ZPAD:
X				c = getinsync(1);
X				goto gotack;
X			case XOFF:		/* Wait a while for an XON */
X				readline(100);
X			}
X		}
#endif
X	}
X
X	signal(SIGINT, onintr);
X	newcnt = Rxbuflen;
X	Txwcnt = 0;
X	stohdr(Txpos);
X	zsbhdr(4, ZDATA, Txhdr);
X
X	/*
X	 * Special testing mode.  This should force receiver to Attn,ZRPOS
X	 *  many times.  Each time the signal should be caught, causing the
X	 *  file to be started over from the beginning.
X	 */
X	if (Test) {
X		if ( --tleft)
X			while (tcount < 20000) {
X				printf(qbf); fflush(stdout);
X				tcount += strlen(qbf);
#ifdef READCHECK
X				while (rdchk(Tty)) {
#ifdef EATSIT
X					switch (checked)
#else
X					switch (readline(1))
#endif
X					{
X					case CAN:
X					case ZPAD:
X						goto waitack;
X					case XOFF:	/* Wait for XON */
X						readline(100);
X					}
X				}
#endif
X			}
X		signal(SIGINT, SIG_IGN); canit();
X		sleep(3); purgeline(); mode(0);
X		printf("\nsz: Tcount = %ld\n", tcount);
X		if (tleft) {
X			printf("ERROR: Interrupts Not Caught\n");
X			exit(1);
X		}
X		exit(0);
X	}
X
X	do {
X		n = zfilbuf();
X		if (Eofseen)
X			e = ZCRCE;
X		else if (junkcount > 3)
X			e = ZCRCW;
X		else if (bytcnt == Lastsync)
X			e = ZCRCW;
X		else if (Rxbuflen && (newcnt -= n) <= 0)
X			e = ZCRCW;
X		else if (Txwindow && (Txwcnt += n) >= Txwspac) {
X			Txwcnt = 0;  e = ZCRCQ;
X		} else
X			e = ZCRCG;
X		if (Verbose>1)
X			fprintf(stderr, "%7ld ZMODEM%s\n",
X			  Txpos, Crc32t?" CRC-32":"");
X		zsdata(txbuf, n, e);
X		bytcnt = Txpos += n;
X		if (e == ZCRCW)
X			goto waitack;
#ifdef READCHECK
X		/*
X		 * If the reverse channel can be tested for data,
X		 *  this logic may be used to detect error packets
X		 *  sent by the receiver, in place of setjmp/longjmp
X		 *  rdchk(Tty) returns non 0 if a character is available
X		 */
X		fflush(stdout);
X		while (rdchk(Tty)) {
#ifdef EATSIT
X			switch (checked)
#else
X			switch (readline(1))
#endif
X			{
X			case CAN:
X			case ZPAD:
X				c = getinsync(1);
X				if (c == ZACK)
X					break;
X				/* zcrce - dinna wanna starta ping-pong game */
X				zsdata(txbuf, 0, ZCRCE);
X				goto gotack;
X			case XOFF:		/* Wait a while for an XON */
X				readline(100);
X			default:
X				++junkcount;
X			}
X		}
#endif	/* READCHECK */
X		if (Txwindow) {
X			while ((tcount = (Txpos - Lrxpos)) >= Txwindow) {
X				vfile("%ld window >= %u", tcount, Txwindow);
X				if (e != ZCRCQ)
X					zsdata(txbuf, 0, e = ZCRCQ);
X				c = getinsync(1);
X				if (c != ZACK) {
X					zsdata(txbuf, 0, ZCRCE);
X					goto gotack;
X				}
X			}
X			vfile("window = %ld", tcount);
X		}
X	} while (!Eofseen);
X	signal(SIGINT, SIG_IGN);
X
X	for (;;) {
X		stohdr(Txpos);
X		zsbhdr(4, ZEOF, Txhdr);
egotack:
X		switch (getinsync(0)) {
X		case ZACK:
X			goto egotack;
X		case ZNAK:
X			continue;
X		case ZRPOS:
X			goto somemore;
X		case ZRINIT:
X			fclose(in);
X			return OK;
X		case ZSKIP:
X			if (Skipbitch)
X				++errcnt;
X			fclose(in);
X			sprintf(endmsg, "File skipped by receiver request");
X			return c;
X		default:
X			sprintf(endmsg, "Got %d trying to send end of file", c);
X		case ERROR:
X			fclose(in);
X			return ERROR;
X		}
X	}
}
X
/*
X * Respond to receiver's complaint, get back in sync with receiver
X */
getinsync(flag)
{
X	register c;
X
X	for (;;) {
X		if (Test) {
X			printf("\r\n\n\n***** Signal Caught *****\r\n");
X			Rxpos = 0; c = ZRPOS;
X		} else
X			c = zgethdr(Rxhdr);
X		switch (c) {
X		case ZCAN:
X		case ZABORT:
X		case ZFIN:
X		case TIMEOUT:
X			sprintf(endmsg, "Got %s sending data", frametypes[c+FTOFFSET]);
X			return ERROR;
X		case ZRPOS:
X			if (Rxpos > bytcnt) {
X				sprintf(endmsg, "Nonstandard Protocol");
X				return ZRPOS;
X			}
X			/* ************************************* */
X			/*  If sending to a buffered modem, you  */
X			/*   might send a break at this point to */
X			/*   dump the modem's buffer.		 */
X			clearerr(in);	/* In case file EOF seen */
X			if (fseek(in, Rxpos, 0)) {
X				sprintf(endmsg, "Bad Seek");
X				return ERROR;
X			}
X			Eofseen = 0;
X			bytcnt = Lrxpos = Txpos = Rxpos;
X			if (Lastsync == Rxpos) {
X				if (++Beenhereb4 > 12) {
X					sprintf(endmsg, "Can't send block");
X					return ERROR;
X				}
X				if (Beenhereb4 > 4)
X					if (blklen > 32)
X						blklen /= 2;
X			}
X			Lastsync = Rxpos;
X			return c;
X		case ZACK:
X			Lrxpos = Rxpos;
X			if (flag || Txpos == Rxpos)
X				return ZACK;
X			continue;
X		case ZRINIT:
X			return c;
X		case ZSKIP:
X			if (Skipbitch)
X				++errcnt;
X			sprintf(endmsg, "File skipped by receiver request");
X			return c;
X		case ERROR:
X		default:
X			zsbhdr(4, ZNAK, Txhdr);
X			continue;
X		}
X	}
}
X
X
/* Send command and related info */
zsendcmd(buf, blen)
char *buf;
{
X	register c;
X	long cmdnum;
X
X	cmdnum = getpid();
X	errors = 0;
X	for (;;) {
X		stohdr(cmdnum);
X		Txhdr[ZF0] = Cmdack1;
X		zsbhdr(4, ZCOMMAND, Txhdr);
X		zsdata(buf, blen, ZCRCW);
listen:
X		Rxtimeout = 100;		/* Ten second wait for resp. */
X		Usevhdrs = 0;		/* Allow rx to send fixed len headers */
X		c = zgethdr(Rxhdr);
X
X		switch (c) {
X		case ZRINIT:
X			goto listen;	/* CAF 8-21-87 */
X		case ERROR:
X		case GCOUNT:
X		case TIMEOUT:
X			if (++errors > 11)
X				return ERROR;
X			continue;
X		case ZCAN:
X		case ZABORT:
X		case ZFIN:
X		case ZSKIP:
X		case ZRPOS:
X			return ERROR;
X		default:
X			if (++errors > 20)
X				return ERROR;
X			continue;
X		case ZCOMPL:
X			Exitcode = Rxpos;
X			saybibi();
X			return OK;
X		case ZRQINIT:
X			vfile("******** RZ *******");
X			system("rz");
X			vfile("******** SZ *******");
X			goto listen;
X		}
X	}
}
X
/*
X * If called as sb use YMODEM protocol
X */
chkinvok(s)
char *s;
{
X	register char *p;
X
X	p = s;
X	while (*p == '-')
X		s = ++p;
X	while (*p)
X		if (*p++ == '/')
X			s = p;
X	if (*s == 'v') {
X		Verbose=1; ++s;
X	}
X	Progname = s;
X	if (s[0]=='z' && s[1] == 'c') {
X		Command = TRUE;
X		if (s[8] == 'i')
X			Cmdack1 = ZCACK1;
X	}
X	if (s[0]=='s' && s[1]=='b') {
X		Nozmodem = TRUE; blklen=1024;
X	}
X	if (s[0]=='s' && s[1]=='x') {
X		Modem2 = TRUE;
X	}
}
X
countem(argc, argv)
register char **argv;
{
X	struct stat f;
X
X	for (Totalleft = 0, Filesleft = 0; --argc >=0; ++argv) {
X		f.st_size = -1;
X		if (Verbose>2) {
X			fprintf(stderr, "\nCountem: %03d %s ", argc, *argv);
X			fflush(stderr);
X		}
X		if (access(*argv, 04) >= 0 && stat(*argv, &f) >= 0) {
X			++Filesleft;  Totalleft += f.st_size;
X		}
X		if (Verbose>2)
X			fprintf(stderr, " %ld", f.st_size);
X	}
X	if (Verbose>2)
X		fprintf(stderr, "\ncountem: Total %d %ld\n",
X		  Filesleft, Totalleft);
}
X
chartest(m)
{
X	register n;
X
X	mode(m);
X	printf("\r\n\nCharacter Transparency Test Mode %d\r\n", m);
X	printf("If Pro-YAM/ZCOMM is not displaying ^M hit ALT-V NOW.\r\n");
X	printf("Hit Enter.\021");  fflush(stdout);
X	readline(500);
X
X	for (n = 0; n < 256; ++n) {
X		if (!(n%8))
X			printf("\r\n");
X		printf("%02x ", n);  fflush(stdout);
X		sendline(n);	flushmo();
X		printf("  ");  fflush(stdout);
X		if (n == 127) {
X			printf("Hit Enter.\021");  fflush(stdout);
X			readline(500);
X			printf("\r\n");  fflush(stdout);
X		}
X	}
X	printf("\021\r\nEnter Characters, echo is in hex.\r\n");
X	printf("Hit SPACE or pause 40 seconds for exit.\r\n");
X
X	while (n != TIMEOUT && n != ' ') {
X		n = readline(400);
X		printf("%02x\r\n", n);
X		fflush(stdout);
X	}
X	printf("\r\nMode %d character transparency test ends.\r\n", m);
X	fflush(stdout);
}
X
/*
X * Set additional control chars to mask in Zsendmask
X * according to bit array stored in char array at p
X */
initzsendmsk(p)
register char *p;
{
X	register c;
X
X	for (c = 0; c < 33; ++c) {
X		if (p[c>>3] & (1 << (c & 7))) {
X			Zsendmask[c] = 1;
X			vfile("Escaping %02o", c);
X		}
X	}
}
X
X
/* End of sz.c */
SHAR_EOF
chmod 0644 sz.c ||
echo 'restore of sz.c failed'
Wc_c="`wc -c < 'sz.c'`"
test 35794 -eq "$Wc_c" ||
	echo 'sz.c: original size 35794, current size' "$Wc_c"
fi
# ============= rz.c ==============
if test -f 'rz.c' -a X"$1" != X"-c"; then
	echo 'x - skipping rz.c (File already exists)'
else
echo 'x - extracting rz.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'rz.c' &&
#define VERSION "3.42 03-19-96"
#define PUBDIR "/usr/spool/uucppublic"
X
/*
X *
X * rz.c By Chuck Forsberg
X *    Copyright 1996 Omen Technology Inc All Rights Reserved
X *
X * A program for Unix to receive files and commands from computers running
X *  Professional-YAM, PowerCom, YAM, IMP, or programs supporting XMODEM.
X *  rz uses Unix buffered input to reduce wasted CPU time.
X *
X * 
X *********************************************************************
X *********************************************************************
X * 
X *
X *	This version implements numerous enhancements including ZMODEM
X *	Run Length Encoding and variable length headers.  These
X *	features were not funded by the original Telenet development
X *	contract.
X * 
X * 
X * This software may be freely used for educational (didactic
X * only) purposes.  "Didactic" means it is used as a study item
X * in a course teaching the workings of computer protocols.
X * 
X * This software may also be freely used to support file transfer
X * operations to or from duly licensed Omen Technology products.
X * This includes DSZ, GSZ, ZCOMM, Professional-YAM and PowerCom.
X * Institutions desiring to use rz/sz this way should add the
X * following to the sz compile line:	-DCOMPL
X * Programs based on stolen or public domain ZMODEM materials are
X * not included.  Use with other commercial or shareware programs
X * (Crosstalk, Procomm, etc.) REQUIRES REGISTRATION.
X * 
X *
X *  Any programs which incorporate part or all of this code must be
X *  provided in source form with this notice intact except by
X *  prior written permission from Omen Technology Incorporated.
X *  This includes compiled executables of this program.
X *
X *   The .doc files and the file "mailer.rz" must also be included.
X * 
X * Use of this software for commercial or administrative purposes
X * except when exclusively limited to interfacing Omen Technology
X * products requires license payment of $20.00 US per user
X * (less in quantity, see mailer.rz).  Use of this code by
X * inclusion, decompilation, reverse engineering or any other means
X * constitutes agreement to these conditions and acceptance of
X * liability to license the materials and payment of reasonable
X * legal costs necessary to enforce this license agreement.
X *
X *
X *		Omen Technology Inc
X *		Post Office Box 4681
X *		Portland OR 97208
X *
X *	This code is made available in the hope it will be useful,
X *	BUT WITHOUT ANY WARRANTY OF ANY KIND OR LIABILITY FOR ANY
X *	DAMAGES OF ANY KIND.
X *
X *
X *  -DMD may be added to compiler command line to compile in
X *    Directory-creating routines from Public Domain TAR by John Gilmore
X *
X *  USG UNIX (3.0) ioctl conventions courtesy  Jeff Martin
X */
X
char *Copyrrz = "Copyright 1996 Omen Technology Inc All Rights Reserved";
X
X
#define LOGFILE "/tmp/rzlog"
#define LOGFILE2 "rzlog"
#include <stdio.h>
#include <signal.h>
#include <ctype.h>
#include <errno.h>
extern int errno;
X
#define OK 0
#define FALSE 0
#define TRUE 1
#define ERROR (-1)
X
/*
X * Max value for HOWMANY is 255.
X *   A larger value reduces system overhead but may evoke kernel bugs.
X */
#ifndef HOWMANY
#define HOWMANY 96
#endif
X
/* Ward Christensen / CP/M parameters - Don't change these! */
#define ENQ 005
#define CAN ('X'&037)
#define XOFF ('s'&037)
#define XON ('q'&037)
#define SOH 1
#define STX 2
#define EOT 4
#define ACK 6
#define NAK 025
#define CPMEOF 032
#define WANTCRC 0103	/* send C not NAK to get crc not checksum */
#define TIMEOUT (-2)
#define RCDO (-3)
#define GCOUNT (-4)
#define ERRORMAX 5
#define RETRYMAX 5
#define WCEOT (-10)
#define PATHLEN 257	/* ready for 4.2 bsd ? */
#define UNIXFILE 0xF000	/* The S_IFMT file mask bit for stat */
X
int Zmodem=0;		/* ZMODEM protocol requested */
int Nozmodem = 0;	/* If invoked as "rb" */
unsigned Baudrate = 9600;
X
X
#include "rbsb.c"	/* most of the system dependent stuff here */
#include "crctab.c"
char endmsg[90] = {0};	/* Possible message to display on exit */
char Zsendmask[33];	/* Additional control chars to mask */
X
char *substr();
FILE *fout;
X
/*
X * Routine to calculate the free bytes on the current file system
X *  ~0 means many free bytes (unknown)
X */
long getfree()
{
X	return(2147483647);	/* many free bytes ... */
}
X
int Lastrx;
long rxbytes;
int Crcflg;
int Firstsec;
int Eofseen;		/* indicates cpm eof (^Z) has been received */
int errors;
int Restricted=0;	/* restricted; no /.. or ../ in filenames */
X
#define DEFBYTL 2000000000L	/* default rx file size */
long Bytesleft;	/* number of bytes of incoming file left */
long Modtime;		/* Unix style mod time for incoming file */
int Filemode;		/* Unix style mode for incoming file */
long Totalleft;
long Filesleft;
char Pathname[PATHLEN];
char *Progname;		/* the name by which we were called */
X
int Batch=0;
int Thisbinary;		/* current file is to be received in bin mode */
int Rxbinary=FALSE;	/* receive all files in bin mode */
int Rxascii=FALSE;	/* receive files in ascii (translate) mode */
int Blklen;		/* record length of received packets */
X
#ifdef SEGMENTS
int chinseg = 0;	/* Number of characters received in this data seg */
char secbuf[1+(SEGMENTS+1)*1024];
#else
char secbuf[1025];
#endif
X
X
time_t timep[2];
char Lzmanag;		/* Local file management request */
char Lzconv;		/* Local ZMODEM file conversion request */
char zconv;		/* ZMODEM file conversion request */
char zmanag;		/* ZMODEM file management request */
char ztrans;		/* ZMODEM file transport request */
int Zctlesc;		/* Encode control characters */
int Zrwindow = 1400;	/* RX window size (controls garbage count) */
X
/*
X * Log an error
X */
/*VARARGS1*/
void
zperr(s,p,u)
char *s, *p, *u;
{
X	if (Verbose <= 0)
X		return;
X	fprintf(stderr, "Retry %d: ", errors);
X	fprintf(stderr, s, p, u);
X	fprintf(stderr, "\n");
}
X
#include "zm.c"
#include "zmr.c"
X
int tryzhdrtype=ZRINIT;	/* Header type to send corresponding to Last rx close */
X
/* called by signal interrupt or terminate to clean things up */
void
bibi(n)
{
X	if (Zmodem)
X		zmputs(Attn);
X	canit(); mode(0);
X	fprintf(stderr, "rz: caught signal %d; exiting", n);
X	exit(3);
}
X
main(argc, argv)
char *argv[];
{
X	register char *cp;
X	register npats;
X	char *virgin, **patts;
X	int exitcode = 0;
X
X	Rxtimeout = 100;
X	setbuf(stderr, NULL);
X	if ((cp=getenv("SHELL")) && (substr(cp, "rsh") || substr(cp, "rksh")))
X		Restricted=TRUE;
X
X	chkinvok(virgin=argv[0]);
X	inittty();
X	npats = 0;
X	while (--argc) {
X		cp = *++argv;
X		if (*cp == '-') {
X			++cp;
X			while( *cp) {
X				if (isdigit(*cp)) {
X					++cp;  continue;
X				}
X				switch(*cp++) {
X				case '\\':
X					 *cp = toupper(*cp);  continue;
X				case 'a':
X					if (!Batch || Nozmodem)
X						Rxascii=TRUE;
X					else
X						usage();
X					break;
X				case 't':
X					if (isdigit(*cp))
X						Rxtimeout = atoi(cp);
X					else {
X						if (--argc < 1)
X							usage();
X						Rxtimeout = atoi(*++argv);
X					}
X					if (Rxtimeout<1 || Rxtimeout>1000)
X						usage();
X					break;
X				case 'w':
X					if (isdigit(*cp))
X						Zrwindow = atoi(cp);
X					else {
X						if (--argc < 1)
X							usage();
X						Zrwindow = atoi(*++argv);
X					}
X					break;
X				case 'v':
X					++Verbose; break;
X				case 'y':
X					Lzmanag = ZMCLOB;
X					break;
X				default:
X					usage();
X				}
X			}
X		}
X		else if ( !npats && argc>0) {
X			if (argv[0][0]) {
X				npats=argc;
X				patts=argv;
X			}
X		}
X	}
X	if (npats > 1)
X		usage();
X	if (Batch && npats)
X		usage();
X	if (Verbose) {
X		if (freopen(LOGFILE, "a", stderr)==NULL)
X			if (freopen(LOGFILE2, "a", stderr)==NULL) {
X				fprintf(stderr, "Can't open log file!\n");
X				exit(2);
X			}
X		setbuf(stderr, NULL);
X		fprintf(stderr, "argv[0]=%s Progname=%s\n", virgin, Progname);
X	}
X	vfile("%s %s for %s tty=%s\n", Progname, VERSION, OS, Nametty);
X	mode(1);
X	if (signal(SIGINT, bibi) == SIG_IGN) {
X		signal(SIGINT, SIG_IGN); signal(SIGKILL, SIG_IGN);
X	}
X	else {
X		signal(SIGINT, bibi); signal(SIGKILL, bibi);
X	}
X	signal(SIGTERM, bibi);
X	if (wcreceive(npats, patts)==ERROR) {
X		exitcode=1;
X		canit();
X	}
X	mode(0);
X	if (exitcode && !Zmodem)	/* bellow again with all thy might. */
X		canit();
X	if (endmsg[0])
X		fprintf(stderr, "  %s: %s\r\n", Progname, endmsg);
X	fprintf(stderr, "%s %s finished.\r\n", Progname, VERSION);
X	fflush(stderr);
X	if(exitcode)
X		exit(1);
#ifndef REGISTERED
X	/* Removing or disabling this code without registering is theft */
X	if (!Usevhdrs)  {
X		fprintf(stderr, "\n\n\nPlease read the License Agreement in rz.doc\n");
X		fflush(stderr);
X		sleep(10);
X	}
#endif
X	exit(0);
X	/* NOTREACHED */
}
X
X
usage()
{
X	fprintf(stderr,
X	"Receive Files and Commands with ZMODEM/YMODEM/XMODEM Protocol\n\n");
X	fprintf(stderr,"%s %s for %s by Chuck Forsberg, Omen Technology INC\n",
X	  Progname, VERSION, OS);
X	fprintf(stderr, "\t\t\042The High Reliability Software\042\n\n");
X	fprintf(stderr,"Usage:	rz [-v]   [-wN] [-tT]	(ZMODEM)\n");
X	fprintf(stderr,"or	rb [-avy] [-tT]		(YMODEM)\n");
X	fprintf(stderr,"or	rc [-avy] [-tT] file	(XMODEM-CRC)\n");
X	fprintf(stderr,"or	rx [-avy] [-tT] file	(XMODEM)\n\n");
X	fprintf(stderr,
"Supports the following incoming ZMODEM options given to the sending program:\n\
X	compression (-Z), binary (-b), ASCII CR/LF>NL (-a), newer(-n),\n\
X	newer+longer(-N), protect (-p), Crash Recovery (-r),\n\
X	clobber (-y), match+clobber (-Y),  and append (-+).\n\n");
X	fprintf(stderr,"Copyright (c) 1996 Omen Technology INC All Rights Reserved\n");
X	fprintf(stderr,
X	"See rz.doc for option descriptions and licensing information.\n\n");
X	fprintf(stderr,
X	"This program is designed to talk to terminal programs,\nnot to be called by one.\n");
X	fprintf(stderr,
X	"\nTechnical support hotline: 900-555-7836 (1-900-555-RTFM) $4.69/min.\n\n");
X	exit(2);
}
X
/*
X * Let's receive something already.
X */
X
char *rbmsg = "%s ready. Type \"%s file ...\" to your modem program\n\r";
X
wcreceive(argc, argp)
char **argp;
{
X	register c;
X
X	if (Batch || argc==0) {
X		Crcflg=1;
X		fprintf(stderr, rbmsg, Progname, Nozmodem?"sb":"sz");
X		if (c=tryz()) {
X			if (c == ZCOMPL)
X				return OK;
X			if (c == ERROR)
X				goto fubar;
X			c = rzfiles();
X			if (c)
X				goto fubar;
X		} else {
X			for (;;) {
X				if (wcrxpn(secbuf)== ERROR)
X					goto fubar;
X				if (secbuf[0]==0)
X					return OK;
X				if (procheader(secbuf) == ERROR)
X					goto fubar;
X				if (wcrx()==ERROR)
X					goto fubar;
X			}
X		}
X	} else {
X		Bytesleft = DEFBYTL; Filemode = 0; Modtime = 0L;
X
X		procheader(""); strcpy(Pathname, *argp); checkpath(Pathname);
X		fprintf(stderr, "\nrz: ready to receive %s\r\n", Pathname);
X		if ((fout=fopen(Pathname, "w")) == NULL)
X			return ERROR;
X		if (wcrx()==ERROR)
X			goto fubar;
X	}
X	return OK;
fubar:
X	canit();
X	Modtime = 1;
X	if (fout)
X		fclose(fout);
X	if (Restricted) {
X		unlink(Pathname);
X		fprintf(stderr, "\r\nrz: %s removed.\r\n", Pathname);
X	}
X	return ERROR;
}
X
X
/*
X * Fetch a pathname from the other end as a C ctyle ASCIZ string.
X * Length is indeterminate as long as less than Blklen
X * A null string represents no more files (YMODEM)
X */
wcrxpn(rpn)
char *rpn;	/* receive a pathname */
{
X	register c;
X
X	purgeline();
X
et_tu:
X	Firstsec=TRUE;  Eofseen=FALSE;
X	sendline(Crcflg?WANTCRC:NAK);  flushmo();
X	Lleft=0;	/* Do read next time ... */
X	while ((c = wcgetsec(rpn, 100)) != 0) {
X		if (c == WCEOT) {
X			zperr( "Pathname fetch returned %d", c);
X			sendline(ACK);  flushmo();
X			Lleft=0;	/* Do read next time ... */
X			readline(1);
X			goto et_tu;
X		}
X		return ERROR;
X	}
X	sendline(ACK);  flushmo();
X	return OK;
}
X
/*
X * Adapted from CMODEM13.C, written by
X * Jack M. Wierda and Roderick W. Hart
X */
X
wcrx()
{
X	register int sectnum, sectcurr;
X	register char sendchar;
X	int cblklen;			/* bytes to dump this block */
X
X	Firstsec=TRUE;sectnum=0; Eofseen=FALSE;
X	sendchar=Crcflg?WANTCRC:NAK;
X
X	for (;;) {
X		sendline(sendchar);	/* send it now, we're ready! */
X		flushmo();
X		Lleft=0;	/* Do read next time ... */
X		sectcurr=wcgetsec(secbuf, (sectnum&0177)?50:130);
X		if (sectcurr==(sectnum+1 &0377)) {
X			sectnum++;
X			cblklen = Bytesleft>Blklen ? Blklen:Bytesleft;
X			if (putsec(secbuf, cblklen)==ERROR)
X				return ERROR;
X			if ((Bytesleft-=cblklen) < 0)
X				Bytesleft = 0;
X			sendchar=ACK;
X		}
X		else if (sectcurr==(sectnum&0377)) {
X			zperr( "Received dup Sector");
X			sendchar=ACK;
X		}
X		else if (sectcurr==WCEOT) {
X			if (closeit())
X				return ERROR;
X			sendline(ACK); flushmo();
X			Lleft=0;	/* Do read next time ... */
X			return OK;
X		}
X		else if (sectcurr==ERROR)
X			return ERROR;
X		else {
X			zperr( "Sync Error");
X			return ERROR;
X		}
X	}
X	/* NOTREACHED */
}
X
/*
X * Wcgetsec fetches a Ward Christensen type sector.
X * Returns sector number encountered or ERROR if valid sector not received,
X * or CAN CAN received
X * or WCEOT if eot sector
X * time is timeout for first char, set to 4 seconds thereafter
X ***************** NO ACK IS SENT IF SECTOR IS RECEIVED OK **************
X *    (Caller must do that when he is good and ready to get next sector)
X */
X
wcgetsec(rxbuf, maxtime)
char *rxbuf;
int maxtime;
{
X	register checksum, wcj, firstch;
X	register unsigned short oldcrc;
X	register char *p;
X	int sectcurr;
X
X	for (Lastrx=errors=0; errors<RETRYMAX; errors++) {
X
X		if ((firstch=readline(maxtime))==STX) {
X			Blklen=1024; goto get2;
X		}
X		if (firstch==SOH) {
X			Blklen=128;
get2:
X			sectcurr=readline(1);
X			if ((sectcurr+(oldcrc=readline(1)))==0377) {
X				oldcrc=checksum=0;
X				for (p=rxbuf,wcj=Blklen; --wcj>=0; ) {
X					if ((firstch=readline(1)) < 0)
X						goto bilge;
X					oldcrc=updcrc(firstch, oldcrc);
X					checksum += (*p++ = firstch);
X				}
X				if ((firstch=readline(1)) < 0)
X					goto bilge;
X				if (Crcflg) {
X					oldcrc=updcrc(firstch, oldcrc);
X					if ((firstch=readline(1)) < 0)
X						goto bilge;
X					oldcrc=updcrc(firstch, oldcrc);
X					if (oldcrc & 0xFFFF)
X						zperr( "CRC");
X					else {
X						Firstsec=FALSE;
X						return sectcurr;
X					}
X				}
X				else if (((checksum-firstch)&0377)==0) {
X					Firstsec=FALSE;
X					return sectcurr;
X				}
X				else
X					zperr( "Checksum");
X			}
X			else
X				zperr("Sector number garbled");
X		}
X		/* make sure eot really is eot and not just mixmash */
X		else if (firstch==EOT && Lleft==0)
X			return WCEOT;
X		else if (firstch==CAN) {
X			if (Lastrx==CAN) {
X				zperr( "Sender CANcelled");
X				return ERROR;
X			} else {
X				Lastrx=CAN;
X				continue;
X			}
X		}
X		else if (firstch==TIMEOUT) {
X			if (Firstsec)
X				goto humbug;
bilge:
X			zperr( "TIMEOUT");
X		}
X		else
X			zperr( "Got 0%o sector header", firstch);
X
humbug:
X		Lastrx=0;
X		while(readline(1)!=TIMEOUT)
X			;
X		if (Firstsec) {
X			sendline(Crcflg?WANTCRC:NAK);  flushmo();
X			Lleft=0;	/* Do read next time ... */
X		} else {
X			maxtime=40; sendline(NAK);  flushmo();
X			Lleft=0;	/* Do read next time ... */
X		}
X	}
X	/* try to stop the bubble machine. */
X	canit();
X	return ERROR;
}
X
X
/*
X * Process incoming file information header
X */
procheader(name)
char *name;
{
X	register char *openmode, *p;
X	static dummy;
X	struct stat f;
X
X	/* set default parameters and overrides */
X	openmode = "w";
X	Thisbinary = (!Rxascii) || Rxbinary;
X	if (zconv == ZCBIN && Lzconv != ZCRESUM)
X		Lzconv = zconv;			/* Remote Binary override */
X	if (Lzconv)
X		zconv = Lzconv;
X	if (Lzmanag)
X		zmanag = Lzmanag;
X
X	/*
X	 *  Process ZMODEM remote file management requests
X	 */
X	if (!Rxbinary && zconv == ZCNL)	/* Remote ASCII override */
X		Thisbinary = 0;
X	if (zconv == ZCBIN)	/* Remote Binary override */
X		Thisbinary = TRUE;
X	else if (zmanag == ZMAPND)
X		openmode = "a";
X
X	Bytesleft = DEFBYTL; Filemode = 0; Modtime = 0L;
X
X	if (!name || !*name)
X		return OK;
X
X	p = name + 1 + strlen(name);
X	if (*p) {	/* file coming from Unix or DOS system */
X		sscanf(p, "%ld%lo%o%lo%d%ld%d%d",
X		  &Bytesleft, &Modtime, &Filemode,
X		  &dummy, &Filesleft, &Totalleft, &dummy, &dummy);
X		if (Filemode & UNIXFILE)
X			++Thisbinary;
X		if (Verbose) {
X			fprintf(stderr,  "Incoming: %s %ld %lo %o\n",
X			  name, Bytesleft, Modtime, Filemode);
X			fprintf(stderr,  "YMODEM header: %s\n", p);
X		}
X	}
X
X
X	else {		/* File coming from CP/M system */
X		for (p=name; *p; ++p)		/* change / to _ */
X			if ( *p == '/')
X				*p = '_';
X
X		if ( *--p == '.')		/* zap trailing period */
X			*p = 0;
X	}
X
X	strcpy(Pathname, name);
X	checkpath(name);
X
X	if (*name && stat(name, &f)!= -1) {
X		zmanag &= ZMMASK;
X		vfile("Current %s is %ld %lo", name, f.st_size, f.st_mtime);
X		if (Thisbinary && zconv==ZCRESUM) {
X			rxbytes = f.st_size & ~511;
X			if (Bytesleft < rxbytes) {
X				rxbytes = 0;  goto doopen;
X			} else
X				openit(name, "r+");
X			if ( !fout)
X				return ZFERR;
X			if (fseek(fout, rxbytes, 0)) {
X				closeit();
X				return ZFERR;
X			}
X			vfile("Crash recovery at %ld", rxbytes);
X			return 0;
X		}
X		else if ((zmanag==ZMNEW) ||
X		  ((zmanag==ZMNEWL) && Bytesleft <= f.st_size) ) {
X			if ((f.st_mtime+1) >= Modtime)
X				goto skipfile;
X			goto doopen;
X		}
X		switch (zmanag & ZMMASK) {
X		case ZMCLOB:
X		case ZMAPND:
X			goto doopen;
X		default:
X			goto skipfile;
X		}
X	} else if (zmanag & ZMSKNOLOC) {
skipfile:
X		vfile("Skipping %s", name);
X		return ZSKIP;
X	}
doopen:
X	openit(name, openmode);
#ifdef MD
X	if ( !fout)
X		if (make_dirs(name))
X			openit(name, openmode);
#endif
X	if ( !fout)
X		return ZFERR;
X	return 0;
}
X
openit(name, openmode)
char *name, *openmode;
{
X	if (strcmp(name, "-"))
X		fout = fopen(name, openmode);
X	else if (isatty(1))
X		fout = fopen("stdout", "a");
X	else
X		fout = stdout;
}
X
#ifdef MD
/*
X *  Directory-creating routines from Public Domain TAR by John Gilmore
X */
X
/*
X * After a file/link/symlink/dir creation has failed, see if
X * it's because some required directory was not present, and if
X * so, create all required dirs.
X */
make_dirs(pathname)
register char *pathname;
{
X	register char *p;		/* Points into path */
X	int madeone = 0;		/* Did we do anything yet? */
X	int save_errno = errno;		/* Remember caller's errno */
X
X	if (errno != ENOENT)
X		return 0;		/* Not our problem */
X
X	for (p = strchr(pathname, '/'); p != NULL; p = strchr(p+1, '/')) {
X		/* Avoid mkdir of empty string, if leading or double '/' */
X		if (p == pathname || p[-1] == '/')
X			continue;
X		/* Avoid mkdir where last part of path is '.' */
X		if (p[-1] == '.' && (p == pathname+1 || p[-2] == '/'))
X			continue;
X		*p = 0;				/* Truncate the path there */
X		if ( !mkdir(pathname, 0777)) {	/* Try to create it as a dir */
X			vfile("Made directory %s\n", pathname);
X			madeone++;		/* Remember if we made one */
X			*p = '/';
X			continue;
X		}
X		*p = '/';
X		if (errno == EEXIST)		/* Directory already exists */
X			continue;
X		/*
X		 * Some other error in the mkdir.  We return to the caller.
X		 */
X		break;
X	}
X	errno = save_errno;		/* Restore caller's errno */
X	return madeone;			/* Tell them to retry if we made one */
}
X
#if (MD != 2)
#define	TERM_SIGNAL(status)	((status) & 0x7F)
#define TERM_COREDUMP(status)	(((status) & 0x80) != 0)
#define TERM_VALUE(status)	((status) >> 8)
/*
X * Make a directory.  Compatible with the mkdir() system call on 4.2BSD.
X */
mkdir(dpath, dmode)
char *dpath;
int dmode;
{
X	int cpid, status;
X	struct stat statbuf;
X
X	if (stat(dpath,&statbuf) == 0) {
X		errno = EEXIST;		/* Stat worked, so it already exists */
X		return -1;
X	}
X
X	/* If stat fails for a reason other than non-existence, return error */
X	if (errno != ENOENT) return -1; 
X
X	switch (cpid = fork()) {
X
X	case -1:			/* Error in fork() */
X		return(-1);		/* Errno is set already */
X
X	case 0:				/* Child process */
X		/*
X		 * Cheap hack to set mode of new directory.  Since this
X		 * child process is going away anyway, we zap its umask.
X		 * FIXME, this won't suffice to set SUID, SGID, etc. on this
X		 * directory.  Does anybody care?
X		 */
X		status = umask(0);	/* Get current umask */
X		status = umask(status | (0777 & ~dmode)); /* Set for mkdir */
X		execl("/bin/mkdir", "mkdir", dpath, (char *)0);
X		_exit(2);		/* Can't exec /bin/mkdir */
X	
X	default:			/* Parent process */
X		while (cpid != wait(&status)) ;	/* Wait for kid to finish */
X	}
X
X	if (TERM_SIGNAL(status) != 0 || TERM_VALUE(status) != 0) {
X		errno = EIO;		/* We don't know why, but */
X		return -1;		/* /bin/mkdir failed */
X	}
X
X	return 0;
}
#endif /* MD != 2 */
#endif /* MD */
X
/*
X * Putsec writes the n characters of buf to receive file fout.
X *  If not in binary mode, carriage returns, and all characters
X *  starting with CPMEOF are discarded.
X */
putsec(buf, n)
char *buf;
register n;
{
X	register char *p;
X
X	if (n == 0)
X		return OK;
X	if (Thisbinary) {
X		for (p=buf; --n>=0; )
X			putc( *p++, fout);
X	}
X	else {
X		if (Eofseen)
X			return OK;
X		for (p=buf; --n>=0; ++p ) {
X			if ( *p == '\r')
X				continue;
X			if (*p == CPMEOF) {
X				Eofseen=TRUE; return OK;
X			}
X			putc(*p ,fout);
X		}
X	}
X	return OK;
}
X
/*
X * substr(string, token) searches for token in string s
X * returns pointer to token within string if found, NULL otherwise
X */
char *
substr(s, t)
register char *s,*t;
{
X	register char *ss,*tt;
X	/* search for first char of token */
X	for (ss=s; *s; s++)
X		if (*s == *t)
X			/* compare token with substring */
X			for (ss=s,tt=t; ;) {
X				if (*tt == 0)
X					return s;
X				if (*ss++ != *tt++)
X					break;
X			}
X	return NULL;
}
X
X
/*
X * If called as rb use YMODEM protocol, etc.
X */
chkinvok(s)
char *s;
{
X	register char *p;
X
X	p = s;
X	while (*p == '-')
X		s = ++p;
X	while (*p)
X		if (*p++ == '/')
X			s = p;
X	if (*s == 'v') {
X		Verbose=1; ++s;
X	}
X	Progname = s;
X	if (s[0]=='r' && s[1]=='z')
X		Batch = TRUE;
X	if (s[0]=='r' && s[1]=='c')
X		Crcflg = TRUE;
X	if (s[0]=='r' && s[1]=='b')
X		Batch = Nozmodem = TRUE;
}
X
/*
X * Totalitarian Communist pathname processing
X */
checkpath(name)
char *name;
{
X	if (Restricted) {
X		if (fopen(name, "r") != NULL) {
X			canit();
X			fprintf(stderr, "\r\nrz: %s exists\n", name);
X			bibi(-1);
X		}
X		/* restrict pathnames to current tree or uucppublic */
X		if ( substr(name, "../")
X		 || (name[0]== '/' && strncmp(name, PUBDIR, strlen(PUBDIR))) ) {
X			canit();
X			fprintf(stderr,"\r\nrz:\tSecurity Violation\r\n");
X			bibi(-1);
X		}
X	}
}
/*
X * Ack a ZFIN packet, let byegones be byegones
X */
void
ackbibi()
{
X	register n;
X
X	vfile("ackbibi:");
X	Readnum = 1;
X	stohdr(0L);
X	for (n=3; --n>=0; ) {
X		purgeline();
X		zshhdr(4,ZFIN, Txhdr);
X		switch (readline(100)) {
X		case 'O':
X			readline(1);	/* Discard 2nd 'O' */
X			vfile("ackbibi complete");
X			return;
X		case RCDO:
X			return;
X		case TIMEOUT:
X		default:
X			break;
X		}
X	}
}
X
X
/*
X * Initialize for Zmodem receive attempt, try to activate Zmodem sender
X *  Handles ZSINIT frame
X *  Return ZFILE if Zmodem filename received, -1 on error,
X *   ZCOMPL if transaction finished,  else 0
X */
tryz()
{
X	register c, n;
X	register cmdzack1flg;
X
X	if (Nozmodem)		/* Check for "rb" program name */
X		return 0;
X
X
X	for (n=15; --n>=0; ) {
X		/* Set buffer length (0) and capability flags */
#ifdef SEGMENTS
X		stohdr(SEGMENTS*1024L);
#else
X		stohdr(0L);
#endif
#ifdef CANBREAK
X		Txhdr[ZF0] = CANFC32|CANFDX|CANOVIO|CANBRK;
#else
X		Txhdr[ZF0] = CANFC32|CANFDX|CANOVIO;
#endif
X		if (Zctlesc)
X			Txhdr[ZF0] |= TESCCTL;
X		Txhdr[ZF0] |= CANRLE;
X		Txhdr[ZF1] = CANVHDR;
X		/* tryzhdrtype may == ZRINIT */
X		zshhdr(4,tryzhdrtype, Txhdr);
X		if (tryzhdrtype == ZSKIP)	/* Don't skip too far */
X			tryzhdrtype = ZRINIT;	/* CAF 8-21-87 */
again:
X		switch (zgethdr(Rxhdr)) {
X		case ZRQINIT:
X			if (Rxhdr[ZF3] & 0x80)
X				Usevhdrs = 1;	/* we can var header */
X			continue;
X		case ZEOF:
X			continue;
X		case TIMEOUT:
X			continue;
X		case ZFILE:
X			zconv = Rxhdr[ZF0];
X			zmanag = Rxhdr[ZF1];
X			ztrans = Rxhdr[ZF2];
X			if (Rxhdr[ZF3] & ZCANVHDR)
X				Usevhdrs = TRUE;
X			tryzhdrtype = ZRINIT;
X			c = zrdata(secbuf, 1024);
X			if (c == GOTCRCW)
X				return ZFILE;
X			zshhdr(4,ZNAK, Txhdr);
X			goto again;
X		case ZSINIT:
X			Zctlesc = TESCCTL & Rxhdr[ZF0];
X			if (zrdata(Attn, ZATTNLEN) == GOTCRCW) {
X				stohdr(1L);
X				zshhdr(4,ZACK, Txhdr);
X				goto again;
X			}
X			zshhdr(4,ZNAK, Txhdr);
X			goto again;
X		case ZFREECNT:
X			stohdr(getfree());
X			zshhdr(4,ZACK, Txhdr);
X			goto again;
X		case ZCOMMAND:
X			cmdzack1flg = Rxhdr[ZF0];
X			if (zrdata(secbuf, 1024) == GOTCRCW) {
X				void exec2();
X
X				if (cmdzack1flg & ZCACK1)
X					stohdr(0L);
X				else
X					stohdr((long)sys2(secbuf));
X				purgeline();	/* dump impatient questions */
X				do {
X					zshhdr(4,ZCOMPL, Txhdr);
X				}
X				while (++errors<20 && zgethdr(Rxhdr) != ZFIN);
X				ackbibi();
X				if (cmdzack1flg & ZCACK1)
X					exec2(secbuf);
X				return ZCOMPL;
X			}
X			zshhdr(4,ZNAK, Txhdr); goto again;
X		case ZCOMPL:
X			goto again;
X		default:
X			continue;
X		case ZFIN:
X			ackbibi(); return ZCOMPL;
X		case ZCAN:
X			return ERROR;
X		}
X	}
X	return 0;
}
X
/*
X * Receive 1 or more files with ZMODEM protocol
X */
rzfiles()
{
X	register c;
X
X	for (;;) {
X		switch (c = rzfile()) {
X		case ZEOF:
X		case ZSKIP:
X			switch (tryz()) {
X			case ZCOMPL:
X				return OK;
X			default:
X				return ERROR;
X			case ZFILE:
X				break;
X			}
X			continue;
X		default:
X			return c;
X		case ERROR:
X			return ERROR;
X		}
X	}
X	/* NOTREACHED */
}
X
/*
X * Receive a file with ZMODEM protocol
X *  Assumes file name frame is in secbuf
X */
rzfile()
{
X	register c, n;
X
X	Eofseen=FALSE;
X	n = 20; rxbytes = 0l;
X
X	if (c = procheader(secbuf)) {
X		return (tryzhdrtype = c);
X	}
X
X	for (;;) {
#ifdef SEGMENTS
X		chinseg = 0;
#endif
X		stohdr(rxbytes);
X		zshhdr(4,ZRPOS, Txhdr);
nxthdr:
X		switch (c = zgethdr(Rxhdr)) {
X		default:
X			vfile("rzfile: Wrong header %d", c);
X			if ( --n < 0) {
X				sprintf(endmsg, "rzfile: Wrong header %d", c);
X				return ERROR;
X			}
X			continue;
X		case ZCAN:
X			sprintf(endmsg, "Sender CANcelled");
X			return ERROR;
X		case ZNAK:
#ifdef SEGMENTS
X			putsec(secbuf, chinseg);
X			chinseg = 0;
#endif
X			if ( --n < 0) {
X				sprintf(endmsg, "rzfile: got ZNAK", c);
X				return ERROR;
X			}
X			continue;
X		case TIMEOUT:
#ifdef SEGMENTS
X			putsec(secbuf, chinseg);
X			chinseg = 0;
#endif
X			if ( --n < 0) {
X				sprintf(endmsg, "rzfile: TIMEOUT", c);
X				return ERROR;
X			}
X			continue;
X		case ZFILE:
X			zrdata(secbuf, 1024);
X			continue;
X		case ZEOF:
#ifdef SEGMENTS
X			putsec(secbuf, chinseg);
X			chinseg = 0;
#endif
X			if (rclhdr(Rxhdr) != rxbytes) {
X				/*
X				 * Ignore eof if it's at wrong place - force
X				 *  a timeout because the eof might have gone
X				 *  out before we sent our zrpos.
X				 */
X				errors = 0;  goto nxthdr;
X			}
X			if (closeit()) {
X				tryzhdrtype = ZFERR;
X				vfile("rzfile: closeit returned <> 0");
X				sprintf(endmsg,"Error closing file");
X				return ERROR;
X			}
X			vfile("rzfile: normal EOF");
X			return c;
X		case ERROR:	/* Too much garbage in header search error */
#ifdef SEGMENTS
X			putsec(secbuf, chinseg);
X			chinseg = 0;
#endif
X			if ( --n < 0) {
X				sprintf(endmsg, "Persistent CRC or other ERROR");
X				return ERROR;
X			}
X			zmputs(Attn);
X			continue;
X		case ZSKIP:
#ifdef SEGMENTS
X			putsec(secbuf, chinseg);
X			chinseg = 0;
#endif
X			Modtime = 1;
X			closeit();
X			sprintf(endmsg, "Sender SKIPPED file");
X			return c;
X		case ZDATA:
X			if (rclhdr(Rxhdr) != rxbytes) {
X				if ( --n < 0) {
X					sprintf(endmsg,"Data has bad addr");
X					return ERROR;
X				}
#ifdef SEGMENTS
X				putsec(secbuf, chinseg);
X				chinseg = 0;
#endif
X				zmputs(Attn);  continue;
X			}
moredata:
X			if (Verbose>1)
X				fprintf(stderr, "%7ld ZMODEM%s\n",
X				  rxbytes, Crc32r?" CRC-32":"");
#ifdef SEGMENTS
X			if (chinseg >= (1024 * SEGMENTS)) {
X				putsec(secbuf, chinseg);
X				chinseg = 0;
X			}
X			switch (c = zrdata(secbuf+chinseg, 1024))
#else
X			switch (c = zrdata(secbuf, 1024))
#endif
X			{
X			case ZCAN:
#ifdef SEGMENTS
X				putsec(secbuf, chinseg);
X				chinseg = 0;
#endif
X				sprintf(endmsg, "Sender CANcelled");
X				return ERROR;
X			case ERROR:	/* CRC error */
#ifdef SEGMENTS
X				putsec(secbuf, chinseg);
X				chinseg = 0;
#endif
X				if ( --n < 0) {
X					sprintf(endmsg, "Persistent CRC or other ERROR");
X					return ERROR;
X				}
X				zmputs(Attn);
X				continue;
X			case TIMEOUT:
#ifdef SEGMENTS
X				putsec(secbuf, chinseg);
X				chinseg = 0;
#endif
X				if ( --n < 0) {
X					sprintf(endmsg, "TIMEOUT");
X					return ERROR;
X				}
X				continue;
X			case GOTCRCW:
X				n = 20;
#ifdef SEGMENTS
X				chinseg += Rxcount;
X				putsec(secbuf, chinseg);
X				chinseg = 0;
#else
X				putsec(secbuf, Rxcount);
#endif
X				rxbytes += Rxcount;
X				stohdr(rxbytes);
X				sendline(XON);
X				zshhdr(4,ZACK, Txhdr);
X				goto nxthdr;
X			case GOTCRCQ:
X				n = 20;
#ifdef SEGMENTS
X				chinseg += Rxcount;
#else
X				putsec(secbuf, Rxcount);
#endif
X				rxbytes += Rxcount;
X				stohdr(rxbytes);
X				zshhdr(4,ZACK, Txhdr);
X				goto moredata;
X			case GOTCRCG:
X				n = 20;
#ifdef SEGMENTS
X				chinseg += Rxcount;
#else
X				putsec(secbuf, Rxcount);
#endif
X				rxbytes += Rxcount;
X				goto moredata;
X			case GOTCRCE:
X				n = 20;
#ifdef SEGMENTS
X				chinseg += Rxcount;
#else
X				putsec(secbuf, Rxcount);
#endif
X				rxbytes += Rxcount;
X				goto nxthdr;
X			}
X		}
X	}
}
X
X
/*
X * Close the receive dataset, return OK or ERROR
X */
closeit()
{
X	time_t time();
X
X	if (fout == stdout) {
X		fflush(stdout);  fout = 0;  return OK;
X	}
X	if (fclose(fout)==ERROR) {
X		fprintf(stderr, "File close ERROR\n");
X		return ERROR;
X	}
X	if (Modtime) {
X		timep[0] = time(NULL);
X		timep[1] = Modtime;
X		utime(Pathname, timep);
X	}
X	if (
#ifdef POSIX
X	S_ISREG(Filemode)
#else
X	(Filemode&S_IFMT) == S_IFREG
#endif
X	)
X		chmod(Pathname, (unsigned short)(07777 & Filemode));
X	return OK;
}
X
X
/*
X * Strip leading ! if present, do shell escape. 
X */
sys2(s)
register char *s;
{
X	if (*s == '!')
X		++s;
X	return system(s);
}
/*
X * Strip leading ! if present, do exec.
X */
void
exec2(s)
register char *s;
{
X	if (*s == '!')
X		++s;
X	mode(0);
X	execl("/bin/sh", "sh", "-c", s);
}
X
/* End of rz.c */
SHAR_EOF
chmod 0644 rz.c ||
echo 'restore of rz.c failed'
Wc_c="`wc -c < 'rz.c'`"
test 29109 -eq "$Wc_c" ||
	echo 'rz.c: original size 29109, current size' "$Wc_c"
fi
# ============= crctab.c ==============
if test -f 'crctab.c' -a X"$1" != X"-c"; then
	echo 'x - skipping crctab.c (File already exists)'
else
echo 'x - extracting crctab.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'crctab.c' &&
/*
X *  Crc calculation stuff
X */
X
/* crctab calculated by Mark G. Mendel, Network Systems Corporation */
static unsigned short crctab[256] = {
X    0x0000,  0x1021,  0x2042,  0x3063,  0x4084,  0x50a5,  0x60c6,  0x70e7,
X    0x8108,  0x9129,  0xa14a,  0xb16b,  0xc18c,  0xd1ad,  0xe1ce,  0xf1ef,
X    0x1231,  0x0210,  0x3273,  0x2252,  0x52b5,  0x4294,  0x72f7,  0x62d6,
X    0x9339,  0x8318,  0xb37b,  0xa35a,  0xd3bd,  0xc39c,  0xf3ff,  0xe3de,
X    0x2462,  0x3443,  0x0420,  0x1401,  0x64e6,  0x74c7,  0x44a4,  0x5485,
X    0xa56a,  0xb54b,  0x8528,  0x9509,  0xe5ee,  0xf5cf,  0xc5ac,  0xd58d,
X    0x3653,  0x2672,  0x1611,  0x0630,  0x76d7,  0x66f6,  0x5695,  0x46b4,
X    0xb75b,  0xa77a,  0x9719,  0x8738,  0xf7df,  0xe7fe,  0xd79d,  0xc7bc,
X    0x48c4,  0x58e5,  0x6886,  0x78a7,  0x0840,  0x1861,  0x2802,  0x3823,
X    0xc9cc,  0xd9ed,  0xe98e,  0xf9af,  0x8948,  0x9969,  0xa90a,  0xb92b,
X    0x5af5,  0x4ad4,  0x7ab7,  0x6a96,  0x1a71,  0x0a50,  0x3a33,  0x2a12,
X    0xdbfd,  0xcbdc,  0xfbbf,  0xeb9e,  0x9b79,  0x8b58,  0xbb3b,  0xab1a,
X    0x6ca6,  0x7c87,  0x4ce4,  0x5cc5,  0x2c22,  0x3c03,  0x0c60,  0x1c41,
X    0xedae,  0xfd8f,  0xcdec,  0xddcd,  0xad2a,  0xbd0b,  0x8d68,  0x9d49,
X    0x7e97,  0x6eb6,  0x5ed5,  0x4ef4,  0x3e13,  0x2e32,  0x1e51,  0x0e70,
X    0xff9f,  0xefbe,  0xdfdd,  0xcffc,  0xbf1b,  0xaf3a,  0x9f59,  0x8f78,
X    0x9188,  0x81a9,  0xb1ca,  0xa1eb,  0xd10c,  0xc12d,  0xf14e,  0xe16f,
X    0x1080,  0x00a1,  0x30c2,  0x20e3,  0x5004,  0x4025,  0x7046,  0x6067,
X    0x83b9,  0x9398,  0xa3fb,  0xb3da,  0xc33d,  0xd31c,  0xe37f,  0xf35e,
X    0x02b1,  0x1290,  0x22f3,  0x32d2,  0x4235,  0x5214,  0x6277,  0x7256,
X    0xb5ea,  0xa5cb,  0x95a8,  0x8589,  0xf56e,  0xe54f,  0xd52c,  0xc50d,
X    0x34e2,  0x24c3,  0x14a0,  0x0481,  0x7466,  0x6447,  0x5424,  0x4405,
X    0xa7db,  0xb7fa,  0x8799,  0x97b8,  0xe75f,  0xf77e,  0xc71d,  0xd73c,
X    0x26d3,  0x36f2,  0x0691,  0x16b0,  0x6657,  0x7676,  0x4615,  0x5634,
X    0xd94c,  0xc96d,  0xf90e,  0xe92f,  0x99c8,  0x89e9,  0xb98a,  0xa9ab,
X    0x5844,  0x4865,  0x7806,  0x6827,  0x18c0,  0x08e1,  0x3882,  0x28a3,
X    0xcb7d,  0xdb5c,  0xeb3f,  0xfb1e,  0x8bf9,  0x9bd8,  0xabbb,  0xbb9a,
X    0x4a75,  0x5a54,  0x6a37,  0x7a16,  0x0af1,  0x1ad0,  0x2ab3,  0x3a92,
X    0xfd2e,  0xed0f,  0xdd6c,  0xcd4d,  0xbdaa,  0xad8b,  0x9de8,  0x8dc9,
X    0x7c26,  0x6c07,  0x5c64,  0x4c45,  0x3ca2,  0x2c83,  0x1ce0,  0x0cc1,
X    0xef1f,  0xff3e,  0xcf5d,  0xdf7c,  0xaf9b,  0xbfba,  0x8fd9,  0x9ff8,
X    0x6e17,  0x7e36,  0x4e55,  0x5e74,  0x2e93,  0x3eb2,  0x0ed1,  0x1ef0
};
X
/*
X * updcrc macro derived from article Copyright (C) 1986 Stephen Satchell. 
X *  NOTE: First srgument must be in range 0 to 255.
X *        Second argument is referenced twice.
X * 
X * Programmers may incorporate any or all code into their programs, 
X * giving proper credit within the source. Publication of the 
X * source routines is permitted so long as proper credit is given 
X * to Stephen Satchell, Satchell Evaluations and Chuck Forsberg, 
X * Omen Technology.
X */
X
#define updcrc(cp, crc) ( crctab[((crc >> 8) & 255)] ^ (crc << 8) ^ cp)
X
/*
X * Copyright (C) 1986 Gary S. Brown.  You may use this program, or
X * code or tables extracted from it, as desired without restriction.
X */
X
/* First, the polynomial itself and its table of feedback terms.  The  */
/* polynomial is                                                       */
/* X^32+X^26+X^23+X^22+X^16+X^12+X^11+X^10+X^8+X^7+X^5+X^4+X^2+X^1+X^0 */
/* Note that we take it "backwards" and put the highest-order term in  */
/* the lowest-order bit.  The X^32 term is "implied"; the LSB is the   */
/* X^31 term, etc.  The X^0 term (usually shown as "+1") results in    */
/* the MSB being 1.                                                    */
X
/* Note that the usual hardware shift register implementation, which   */
/* is what we're using (we're merely optimizing it by doing eight-bit  */
/* chunks at a time) shifts bits into the lowest-order term.  In our   */
/* implementation, that means shifting towards the right.  Why do we   */
/* do it this way?  Because the calculated CRC must be transmitted in  */
/* order from highest-order term to lowest-order term.  UARTs transmit */
/* characters in order from LSB to MSB.  By storing the CRC this way,  */
/* we hand it to the UART in the order low-byte to high-byte; the UART */
/* sends each low-bit to hight-bit; and the result is transmission bit */
/* by bit from highest- to lowest-order term without requiring any bit */
/* shuffling on our part.  Reception works similarly.                  */
X
/* The feedback terms table consists of 256, 32-bit entries.  Notes:   */
/*                                                                     */
/*     The table can be generated at runtime if desired; code to do so */
/*     is shown later.  It might not be obvious, but the feedback      */
/*     terms simply represent the results of eight shift/xor opera-    */
/*     tions for all combinations of data and CRC register values.     */
/*                                                                     */
/*     The values must be right-shifted by eight bits by the "updcrc"  */
/*     logic; the shift must be unsigned (bring in zeroes).  On some   */
/*     hardware you could probably optimize the shift in assembler by  */
/*     using byte-swap instructions.                                   */
X
static unsigned long cr3tab[] = { /* CRC polynomial 0xedb88320 */
0x00000000, 0x77073096, 0xee0e612c, 0x990951ba, 0x076dc419, 0x706af48f, 0xe963a535, 0x9e6495a3,
0x0edb8832, 0x79dcb8a4, 0xe0d5e91e, 0x97d2d988, 0x09b64c2b, 0x7eb17cbd, 0xe7b82d07, 0x90bf1d91,
0x1db71064, 0x6ab020f2, 0xf3b97148, 0x84be41de, 0x1adad47d, 0x6ddde4eb, 0xf4d4b551, 0x83d385c7,
0x136c9856, 0x646ba8c0, 0xfd62f97a, 0x8a65c9ec, 0x14015c4f, 0x63066cd9, 0xfa0f3d63, 0x8d080df5,
0x3b6e20c8, 0x4c69105e, 0xd56041e4, 0xa2677172, 0x3c03e4d1, 0x4b04d447, 0xd20d85fd, 0xa50ab56b,
0x35b5a8fa, 0x42b2986c, 0xdbbbc9d6, 0xacbcf940, 0x32d86ce3, 0x45df5c75, 0xdcd60dcf, 0xabd13d59,
0x26d930ac, 0x51de003a, 0xc8d75180, 0xbfd06116, 0x21b4f4b5, 0x56b3c423, 0xcfba9599, 0xb8bda50f,
0x2802b89e, 0x5f058808, 0xc60cd9b2, 0xb10be924, 0x2f6f7c87, 0x58684c11, 0xc1611dab, 0xb6662d3d,
0x76dc4190, 0x01db7106, 0x98d220bc, 0xefd5102a, 0x71b18589, 0x06b6b51f, 0x9fbfe4a5, 0xe8b8d433,
0x7807c9a2, 0x0f00f934, 0x9609a88e, 0xe10e9818, 0x7f6a0dbb, 0x086d3d2d, 0x91646c97, 0xe6635c01,
0x6b6b51f4, 0x1c6c6162, 0x856530d8, 0xf262004e, 0x6c0695ed, 0x1b01a57b, 0x8208f4c1, 0xf50fc457,
0x65b0d9c6, 0x12b7e950, 0x8bbeb8ea, 0xfcb9887c, 0x62dd1ddf, 0x15da2d49, 0x8cd37cf3, 0xfbd44c65,
0x4db26158, 0x3ab551ce, 0xa3bc0074, 0xd4bb30e2, 0x4adfa541, 0x3dd895d7, 0xa4d1c46d, 0xd3d6f4fb,
0x4369e96a, 0x346ed9fc, 0xad678846, 0xda60b8d0, 0x44042d73, 0x33031de5, 0xaa0a4c5f, 0xdd0d7cc9,
0x5005713c, 0x270241aa, 0xbe0b1010, 0xc90c2086, 0x5768b525, 0x206f85b3, 0xb966d409, 0xce61e49f,
0x5edef90e, 0x29d9c998, 0xb0d09822, 0xc7d7a8b4, 0x59b33d17, 0x2eb40d81, 0xb7bd5c3b, 0xc0ba6cad,
0xedb88320, 0x9abfb3b6, 0x03b6e20c, 0x74b1d29a, 0xead54739, 0x9dd277af, 0x04db2615, 0x73dc1683,
0xe3630b12, 0x94643b84, 0x0d6d6a3e, 0x7a6a5aa8, 0xe40ecf0b, 0x9309ff9d, 0x0a00ae27, 0x7d079eb1,
0xf00f9344, 0x8708a3d2, 0x1e01f268, 0x6906c2fe, 0xf762575d, 0x806567cb, 0x196c3671, 0x6e6b06e7,
0xfed41b76, 0x89d32be0, 0x10da7a5a, 0x67dd4acc, 0xf9b9df6f, 0x8ebeeff9, 0x17b7be43, 0x60b08ed5,
0xd6d6a3e8, 0xa1d1937e, 0x38d8c2c4, 0x4fdff252, 0xd1bb67f1, 0xa6bc5767, 0x3fb506dd, 0x48b2364b,
0xd80d2bda, 0xaf0a1b4c, 0x36034af6, 0x41047a60, 0xdf60efc3, 0xa867df55, 0x316e8eef, 0x4669be79,
0xcb61b38c, 0xbc66831a, 0x256fd2a0, 0x5268e236, 0xcc0c7795, 0xbb0b4703, 0x220216b9, 0x5505262f,
0xc5ba3bbe, 0xb2bd0b28, 0x2bb45a92, 0x5cb36a04, 0xc2d7ffa7, 0xb5d0cf31, 0x2cd99e8b, 0x5bdeae1d,
0x9b64c2b0, 0xec63f226, 0x756aa39c, 0x026d930a, 0x9c0906a9, 0xeb0e363f, 0x72076785, 0x05005713,
0x95bf4a82, 0xe2b87a14, 0x7bb12bae, 0x0cb61b38, 0x92d28e9b, 0xe5d5be0d, 0x7cdcefb7, 0x0bdbdf21,
0x86d3d2d4, 0xf1d4e242, 0x68ddb3f8, 0x1fda836e, 0x81be16cd, 0xf6b9265b, 0x6fb077e1, 0x18b74777,
0x88085ae6, 0xff0f6a70, 0x66063bca, 0x11010b5c, 0x8f659eff, 0xf862ae69, 0x616bffd3, 0x166ccf45,
0xa00ae278, 0xd70dd2ee, 0x4e048354, 0x3903b3c2, 0xa7672661, 0xd06016f7, 0x4969474d, 0x3e6e77db,
0xaed16a4a, 0xd9d65adc, 0x40df0b66, 0x37d83bf0, 0xa9bcae53, 0xdebb9ec5, 0x47b2cf7f, 0x30b5ffe9,
0xbdbdf21c, 0xcabac28a, 0x53b39330, 0x24b4a3a6, 0xbad03605, 0xcdd70693, 0x54de5729, 0x23d967bf,
0xb3667a2e, 0xc4614ab8, 0x5d681b02, 0x2a6f2b94, 0xb40bbe37, 0xc30c8ea1, 0x5a05df1b, 0x2d02ef8d
};
X
#ifdef NFGM
unsigned long
UPDC32(b, c)
unsigned long c;
{
X	return (cr3tab[((int)c ^ b) & 0xff] ^ ((c >> 8) & 0x00FFFFFF));
}
X
#else
X
#define UPDC32(b, c) (cr3tab[((int)c ^ b) & 0xff] ^ ((c >> 8) & 0x00FFFFFF))
#endif
X
/* End of crctab.c */
SHAR_EOF
chmod 0644 crctab.c ||
echo 'restore of crctab.c failed'
Wc_c="`wc -c < 'crctab.c'`"
test 8764 -eq "$Wc_c" ||
	echo 'crctab.c: original size 8764, current size' "$Wc_c"
fi
# ============= mailer.rz ==============
if test -f 'mailer.rz' -a X"$1" != X"-c"; then
	echo 'x - skipping mailer.rz (File already exists)'
else
echo 'x - extracting mailer.rz (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'mailer.rz' &&
X           RZ/SZ Version 3.XX License form (Worldwide)
X
Remit To:           Omen Technology INC             FAX: 503-629-0665
X                    POB 4681
X                    Portland OR  97208-4681
X
Unregistered users support hotline: 900-555-7836 at $4.69 per minute.
X
X    Federal TAX ID #: 930858776 Oregon TAX ID #: 536565
X
Payment of This License authorizes the installation and use of
the "rz/sz" programs and/or derivative products derived from
this code by compilation, inclusion, decompilation, or reverse
engineering on the specified computers and/or ports.
X
This license covers current and future Version 3.XX releases of the
"rz" and "sz" programs.
X
RZ/SZ Version 3.XX per user Quantity Discount Schedule, (per
purchase).  Each machine this software is used on has at least
one port.  The software must be registered according to the
maximum number of users that will be using the software at one
time.
X
1       $20.00
2-10    $18.00 each user
11-19   $15.00 each user
20-39   $13.00 each user
-      $199   Educational campus site (college owned machines)
X
40-99  $500   each machine INCLUDES SUPPORT * (see below)
-     $1000   Other campus site INCLUDES SUPPORT ** (see below)
X
"Machine" means a computer system with an arbitrary number of physically
co-located processors sharing a common logical identity.
X
$500 and $1000 registrations include:
X	Telephone and internet mail support for a specified contact individual
X	A copy of Unix Professional-YAM with rz/sz man page troff source
X
Otherwise support is available at 1-900-555-7836 or by consulting contract.
X
____ RZ/SZ Version 3.XX Registrations                     ______
X
____ OPTIONAL: Update disk (current rz/sz sources as on FTP site)
X                                  5.25 inch DOS $ 15.00   ______
X                                  3.5  inch DOS $ 20.00
X				  (Contact Omen for other formats)
X
X       (Overseas air mailed at no extra charge)    Total  ______
X                 Purchase orders must be prepaid.
X
X
Company Name     ___________________________________________________________
X
Address  ___________________________________________________________________
X
X         ___________________________________________________________________
X
X         ___________________________________________________________________
X
* Specified contact individual  ____________________________________________
X
** 2nd Specified contact individual  _______________________________________
X
I hereby agree that the licenses paid for are equal to or greater than any
number of simultaneous invocations of the Programs, and that additional
licenses will be purchased prior to increasing the number of simultaneous
invocations of the Programs.
X
I agree that these Programs are made available in the hope it will be
useful, BUT WITHOUT ANY WARRANTY OF ANY KIND OR LIABILITY FOR ANY DAMAGES
OF ANY KIND.
X
Name     ___________________________________________________________________
X
Title    ___________________________________________________________________
X
X
Signature __________________________________________________________________
X
Date      ___________________            Phone  (_____) ____________________
X
X
Payment by:  Check (U.S. bank or branch) enclosed ( )    Visa/Mastercard ( )
X
Card #  _____________________________________________  EXPIRES _____________
X
Name of Cardholder  ________________________________________________________
X
SHAR_EOF
chmod 0440 mailer.rz ||
echo 'restore of mailer.rz failed'
Wc_c="`wc -c < 'mailer.rz'`"
test 3413 -eq "$Wc_c" ||
	echo 'mailer.rz: original size 3413, current size' "$Wc_c"
fi
# ============= crc.c ==============
if test -f 'crc.c' -a X"$1" != X"-c"; then
	echo 'x - skipping crc.c (File already exists)'
else
echo 'x - extracting crc.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'crc.c' &&
/*% cc -O -K -dos % -o crc.exe
*/
X
/*
X *  Crc - 32 BIT ANSI X3.66 CRC checksum files
X */
#include <stdio.h>
#define OK 0
#define ERROR (-1)
#define LINT_ARGS
X
/**********************************************************************\
|*                                                                    *|
|* Demonstration program to compute the 32-bit CRC used as the frame  *|
|* check sequence in ADCCP (ANSI X3.66, also known as FIPS PUB 71     *|
|* and FED-STD-1003, the U.S. versions of CCITT's X.25 link-level     *|
|* protocol).  The 32-bit FCS was added via the Federal Register,     *|
|* 1 June 1982, p.23798.  I presume but don't know for certain that   *|
|* this polynomial is or will be included in CCITT V.41, which        *|
|* defines the 16-bit CRC (often called CRC-CCITT) polynomial.  FIPS  *|
|* PUB 78 says that the 32-bit FCS reduces otherwise undetected       *|
|* errors by a factor of 10^-5 over 16-bit FCS.                       *|
|*                                                                    *|
\**********************************************************************/
X
/* Need an unsigned type capable of holding 32 bits; */
typedef unsigned long int UNS_32_BITS;
X
/*
X * Copyright (C) 1986 Gary S. Brown.  You may use this program, or
X * code or tables extracted from it, as desired without restriction.
X */
/* First, the polynomial itself and its table of feedback terms.  The  */
/* polynomial is                                                       */
/* X^32+X^26+X^23+X^22+X^16+X^12+X^11+X^10+X^8+X^7+X^5+X^4+X^2+X^1+X^0 */
/* Note that we take it "backwards" and put the highest-order term in  */
/* the lowest-order bit.  The X^32 term is "implied"; the LSB is the   */
/* X^31 term, etc.  The X^0 term (usually shown as "+1") results in    */
/* the MSB being 1.                                                    */
X
/* Note that the usual hardware shift register implementation, which   */
/* is what we're using (we're merely optimizing it by doing eight-bit  */
/* chunks at a time) shifts bits into the lowest-order term.  In our   */
/* implementation, that means shifting towards the right.  Why do we   */
/* do it this way?  Because the calculated CRC must be transmitted in  */
/* order from highest-order term to lowest-order term.  UARTs transmit */
/* characters in order from LSB to MSB.  By storing the CRC this way,  */
/* we hand it to the UART in the order low-byte to high-byte; the UART */
/* sends each low-bit to hight-bit; and the result is transmission bit */
/* by bit from highest- to lowest-order term without requiring any bit */
/* shuffling on our part.  Reception works similarly.                  */
X
/* The feedback terms table consists of 256, 32-bit entries.  Notes:   */
/*                                                                     */
/*  1. The table can be generated at runtime if desired; code to do so */
/*     is shown later.  It might not be obvious, but the feedback      */
/*     terms simply represent the results of eight shift/xor opera-    */
/*     tions for all combinations of data and CRC register values.     */
/*                                                                     */
/*  2. The CRC accumulation logic is the same for all CRC polynomials, */
/*     be they sixteen or thirty-two bits wide.  You simply choose the */
/*     appropriate table.  Alternatively, because the table can be     */
/*     generated at runtime, you can start by generating the table for */
/*     the polynomial in question and use exactly the same "updcrc",   */
/*     if your application needn't simultaneously handle two CRC       */
/*     polynomials.  (Note, however, that XMODEM is strange.)          */
/*                                                                     */
/*  3. For 16-bit CRCs, the table entries need be only 16 bits wide;   */
/*     of course, 32-bit entries work OK if the high 16 bits are zero. */
/*                                                                     */
/*  4. The values must be right-shifted by eight bits by the "updcrc"  */
/*     logic; the shift must be unsigned (bring in zeroes).  On some   */
/*     hardware you could probably optimize the shift in assembler by  */
/*     using byte-swap instructions.                                   */
X
static UNS_32_BITS crc_32_tab[] = { /* CRC polynomial 0xedb88320 */
0x00000000, 0x77073096, 0xee0e612c, 0x990951ba, 0x076dc419, 0x706af48f, 0xe963a535, 0x9e6495a3,
0x0edb8832, 0x79dcb8a4, 0xe0d5e91e, 0x97d2d988, 0x09b64c2b, 0x7eb17cbd, 0xe7b82d07, 0x90bf1d91,
0x1db71064, 0x6ab020f2, 0xf3b97148, 0x84be41de, 0x1adad47d, 0x6ddde4eb, 0xf4d4b551, 0x83d385c7,
0x136c9856, 0x646ba8c0, 0xfd62f97a, 0x8a65c9ec, 0x14015c4f, 0x63066cd9, 0xfa0f3d63, 0x8d080df5,
0x3b6e20c8, 0x4c69105e, 0xd56041e4, 0xa2677172, 0x3c03e4d1, 0x4b04d447, 0xd20d85fd, 0xa50ab56b,
0x35b5a8fa, 0x42b2986c, 0xdbbbc9d6, 0xacbcf940, 0x32d86ce3, 0x45df5c75, 0xdcd60dcf, 0xabd13d59,
0x26d930ac, 0x51de003a, 0xc8d75180, 0xbfd06116, 0x21b4f4b5, 0x56b3c423, 0xcfba9599, 0xb8bda50f,
0x2802b89e, 0x5f058808, 0xc60cd9b2, 0xb10be924, 0x2f6f7c87, 0x58684c11, 0xc1611dab, 0xb6662d3d,
0x76dc4190, 0x01db7106, 0x98d220bc, 0xefd5102a, 0x71b18589, 0x06b6b51f, 0x9fbfe4a5, 0xe8b8d433,
0x7807c9a2, 0x0f00f934, 0x9609a88e, 0xe10e9818, 0x7f6a0dbb, 0x086d3d2d, 0x91646c97, 0xe6635c01,
0x6b6b51f4, 0x1c6c6162, 0x856530d8, 0xf262004e, 0x6c0695ed, 0x1b01a57b, 0x8208f4c1, 0xf50fc457,
0x65b0d9c6, 0x12b7e950, 0x8bbeb8ea, 0xfcb9887c, 0x62dd1ddf, 0x15da2d49, 0x8cd37cf3, 0xfbd44c65,
0x4db26158, 0x3ab551ce, 0xa3bc0074, 0xd4bb30e2, 0x4adfa541, 0x3dd895d7, 0xa4d1c46d, 0xd3d6f4fb,
0x4369e96a, 0x346ed9fc, 0xad678846, 0xda60b8d0, 0x44042d73, 0x33031de5, 0xaa0a4c5f, 0xdd0d7cc9,
0x5005713c, 0x270241aa, 0xbe0b1010, 0xc90c2086, 0x5768b525, 0x206f85b3, 0xb966d409, 0xce61e49f,
0x5edef90e, 0x29d9c998, 0xb0d09822, 0xc7d7a8b4, 0x59b33d17, 0x2eb40d81, 0xb7bd5c3b, 0xc0ba6cad,
0xedb88320, 0x9abfb3b6, 0x03b6e20c, 0x74b1d29a, 0xead54739, 0x9dd277af, 0x04db2615, 0x73dc1683,
0xe3630b12, 0x94643b84, 0x0d6d6a3e, 0x7a6a5aa8, 0xe40ecf0b, 0x9309ff9d, 0x0a00ae27, 0x7d079eb1,
0xf00f9344, 0x8708a3d2, 0x1e01f268, 0x6906c2fe, 0xf762575d, 0x806567cb, 0x196c3671, 0x6e6b06e7,
0xfed41b76, 0x89d32be0, 0x10da7a5a, 0x67dd4acc, 0xf9b9df6f, 0x8ebeeff9, 0x17b7be43, 0x60b08ed5,
0xd6d6a3e8, 0xa1d1937e, 0x38d8c2c4, 0x4fdff252, 0xd1bb67f1, 0xa6bc5767, 0x3fb506dd, 0x48b2364b,
0xd80d2bda, 0xaf0a1b4c, 0x36034af6, 0x41047a60, 0xdf60efc3, 0xa867df55, 0x316e8eef, 0x4669be79,
0xcb61b38c, 0xbc66831a, 0x256fd2a0, 0x5268e236, 0xcc0c7795, 0xbb0b4703, 0x220216b9, 0x5505262f,
0xc5ba3bbe, 0xb2bd0b28, 0x2bb45a92, 0x5cb36a04, 0xc2d7ffa7, 0xb5d0cf31, 0x2cd99e8b, 0x5bdeae1d,
0x9b64c2b0, 0xec63f226, 0x756aa39c, 0x026d930a, 0x9c0906a9, 0xeb0e363f, 0x72076785, 0x05005713,
0x95bf4a82, 0xe2b87a14, 0x7bb12bae, 0x0cb61b38, 0x92d28e9b, 0xe5d5be0d, 0x7cdcefb7, 0x0bdbdf21,
0x86d3d2d4, 0xf1d4e242, 0x68ddb3f8, 0x1fda836e, 0x81be16cd, 0xf6b9265b, 0x6fb077e1, 0x18b74777,
0x88085ae6, 0xff0f6a70, 0x66063bca, 0x11010b5c, 0x8f659eff, 0xf862ae69, 0x616bffd3, 0x166ccf45,
0xa00ae278, 0xd70dd2ee, 0x4e048354, 0x3903b3c2, 0xa7672661, 0xd06016f7, 0x4969474d, 0x3e6e77db,
0xaed16a4a, 0xd9d65adc, 0x40df0b66, 0x37d83bf0, 0xa9bcae53, 0xdebb9ec5, 0x47b2cf7f, 0x30b5ffe9,
0xbdbdf21c, 0xcabac28a, 0x53b39330, 0x24b4a3a6, 0xbad03605, 0xcdd70693, 0x54de5729, 0x23d967bf,
0xb3667a2e, 0xc4614ab8, 0x5d681b02, 0x2a6f2b94, 0xb40bbe37, 0xc30c8ea1, 0x5a05df1b, 0x2d02ef8d
};
X
#define UPDC32(octet, crc) (crc_32_tab[((crc) ^ (octet)) & 0xff] ^ ((crc) >> 8))
X
int Block = 0;		/* Pad file with 032's to multiple of Block */
X
main(argc, argv)
char **argv;
{
X	register errors = 0;
X
X	if (! strcmp(argv[1], "-x")) {
X		Block = 128; --argc; ++argv;
X	}
X	if (! strcmp(argv[1], "-k")) {
X		Block = 1024; --argc; ++argv;
X	}
X	while( --argc > 0)
X		errors |= crc32file( *++argv);
X	exit(errors != 0);
}
X
crc32file(name)
char *name;
{
X	register FILE *fin;
X	register unsigned long oldcrc32;
X	register unsigned long crc32;
X	register unsigned long oldcrc;
X	register c;
X	register long charcnt;
X	register long l;
X
X	oldcrc32 = 0xFFFFFFFF; charcnt = 0;
#ifdef M_I86SM
X	if ((fin=fopen(name, "rb"))==NULL)
#else
X	if ((fin=fopen(name, "r"))==NULL)
#endif
X	{
X		perror(name);
X		return ERROR;
X	}
X	while ((c=getc(fin))!=EOF) {
X		++charcnt;
X		oldcrc32 = UPDC32(c, oldcrc32);
X	}
X
X	if (ferror(fin)) {
X		perror(name);
X		fclose(fin); return ERROR;
X	}
X	else {
X		if (Block) {
X			for (l = charcnt; l % Block; ++l)
X				oldcrc32 = UPDC32(032, oldcrc32);
X		}
X		crc32 = oldcrc32;  oldcrc = oldcrc32 = ~oldcrc32;
X
X		printf("%08lX %7ld ", oldcrc, charcnt);
X		if (Block == 128)
X			printf("%5ld+%3ld ", charcnt/Block, charcnt%Block);
X		if (Block == 1024)
X			printf("%5ld+%4ld ", charcnt/Block, charcnt%Block);
X		printf(" %s\n", name);
X	}
X
X	fclose(fin); return OK;
}
X
/* End of crc.c */
SHAR_EOF
chmod 0644 crc.c ||
echo 'restore of crc.c failed'
Wc_c="`wc -c < 'crc.c'`"
test 8815 -eq "$Wc_c" ||
	echo 'crc.c: original size 8815, current size' "$Wc_c"
fi
# ============= rbsb.c ==============
if test -f 'rbsb.c' -a X"$1" != X"-c"; then
	echo 'x - skipping rbsb.c (File already exists)'
else
echo 'x - extracting rbsb.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'rbsb.c' &&
/*
X *	V7/BSD HACKERS:  SEE NOTES UNDER mode(2) !!!
X *
X *   This file is #included so the main file can set parameters such as HOWMANY.
X *   See the main files (rz.c/sz.c) for compile instructions.
X */
X
char *Copyr = "Copyright 1994 Omen Technology Inc All Rights Reserved";
X
#ifdef V7
#include <sys/types.h>
#include <sys/stat.h>
#define STAT
#include <sgtty.h>
#define OS "V7/BSD"
char *getenv(), *ttyname();
#ifdef LLITOUT
long Locmode;		/* Saved "local mode" for 4.x BSD "new driver" */
long Locbit = LLITOUT;	/* Bit SUPPOSED to disable output translations */
#include <strings.h>
#endif
#endif
X
#ifdef USG
#include <sys/types.h>
#include <sys/stat.h>
#define STAT
#include <termio.h>
#define OS "SYS III/V"
#define MODE2OK
#include <string.h>
#ifndef OLD
#include <stdlib.h>
#endif
#include <unistd.h>
#endif
X
#ifdef POSIX
#define USG
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#define STAT
#include <termios.h>
#define OS "POSIX"
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#ifndef READCHECK
#ifndef FIONREAD
#define SV
#endif
#endif
#endif
X
#ifdef OLD
char *ttyname();
char *getenv();
#define time_t long
#endif
X
X
#ifdef T6K
#include <sys/ioctl.h>		/* JPRadley: for the Tandy 6000 */
#endif
X
#include <setjmp.h>
X
#if HOWMANY  > 255
Howmany must be 255 or less
#endif
X
X /*
X *  Some systems (Venix, Coherent, Regulus) may not support tty raw mode
X *  read(2) the same way as Unix. ONEREAD must be defined to force one
X *  character reads for these systems. Added 7-01-84 CAF
X */
X
#define sendline(c) putc(c & 0377, Ttystream)
#define xsendline(c) putc(c, Ttystream)
X
char *Nametty;
FILE *Ttystream;
int Tty;
char linbuf[HOWMANY];
char xXbuf[BUFSIZ];
int Lleft=0;		/* number of characters in linbuf */
jmp_buf tohere;		/* For the interrupt on RX timeout */
#ifdef ONEREAD
/* Sorry, Regulus and some others don't work right in raw mode! */
int Readnum = 1;	/* Number of bytes to ask for in read() from modem */
#else
int Readnum = HOWMANY;	/* Number of bytes to ask for in read() from modem */
#endif
int Verbose=0;
X
X
/*
X *  The following uses an external rdchk() routine if available,
X *  otherwise defines the function for BSD or fakes it for SYSV.
X */
X
#ifndef READCHECK
#ifdef FIONREAD
#define READCHECK
/*
X *  Return non 0 iff something to read from io descriptor f
X */
rdchk(f)
{
X	static long lf;
X
X	ioctl(f, FIONREAD, &lf);
X	return ((int) lf);
}
X
#else		/* FIONREAD */
X
#ifdef SV
#define READCHECK
#include <fcntl.h>
X
int checked = 0;
/*
X * Nonblocking I/O is a bit different in System V, Release 2
X *  Note: this rdchk vsn throws away a byte, OK for ZMODEM
X *  sender because protocol design anticipates this problem.
X */
#define EATSIT
rdchk(f)
{
X	int lf, savestat;
X	static char bchecked;
X
X	savestat = fcntl(f, F_GETFL) ;
#ifdef O_NDELAY
X	fcntl(f, F_SETFL, savestat | O_NDELAY) ;
#else
X	fcntl(f, F_SETFL, savestat | O_NONBLOCK) ;
#endif
X	lf = read(f, &bchecked, 1) ;
X	fcntl(f, F_SETFL, savestat) ;
X	checked = bchecked & 0377;	/* force unsigned byte */
X	return(lf) ;
}
#endif
#endif
#endif
X
X
struct {
X	unsigned baudr;
X	int speedcode;
} speeds[] = {
X	110,	B110,
#ifdef B150
X	150,	B150,
#endif
X	300,	B300,
X	600,	B600,
X	1200,	B1200,
X	2400,	B2400,
X	4800,	B4800,
X	9600,	B9600,
#ifdef B19200
X	19200,	B19200,
#endif
#ifdef EXTA
X	19200,	EXTA,
#endif
#ifdef B38400
X	38400,	B38400,
#endif
#ifdef EXTB
X	38400,	EXTB,
#endif
X	0,	0
};
static unsigned
getspeed(code)
{
X	register n;
X
X	for (n=0; speeds[n].baudr; ++n)
X		if (speeds[n].speedcode == code)
X			return speeds[n].baudr;
X	if (code > 49)
X		return ((unsigned)code);
X	return 1;	/* Assume fifo if ioctl failed */
}
X
X
#ifdef ICANON
#ifdef POSIX
struct termios oldtty, tty;
#else
struct termio oldtty, tty;
#endif
#else
struct sgttyb oldtty, tty;
struct tchars oldtch, tch;
#endif
X
/*
X * mode(n)
X *  3: save old tty stat, set raw mode with flow control
X *  2: set XON/XOFF for sb/sz with ZMODEM or YMODEM-g
X *  1: save old tty stat, set raw mode 
X *  0: restore original tty mode
X */
mode(n)
{
X	static did0 = FALSE;
X
X	vfile("mode:%d", n);
X	switch(n) {
#ifdef USG
X	case 2:		/* Un-raw mode used by sz, sb when -g detected */
#ifdef POSIX
X		if(!did0)
X			(void) tcgetattr(Tty, &oldtty);
#else
X		if(!did0)
X			(void) ioctl(Tty, TCGETA, &oldtty);
#endif
X		tty = oldtty;
X
X		tty.c_iflag = BRKINT|IXON;
X
X		tty.c_oflag = 0;	/* Transparent output */
X
X		tty.c_cflag &= ~(PARENB|CSIZE);		/* Disable parity */
X		tty.c_cflag |= (CREAD|CS8);	/* Set character size = 8 */
X
X
#ifdef READCHECK
X		tty.c_lflag = Zmodem ? 0 : ISIG;
X		tty.c_cc[VINTR] = Zmodem ? -1:030;	/* Interrupt char */
#else
X		tty.c_lflag = ISIG;
X		tty.c_cc[VINTR] = Zmodem ? 03:030;	/* Interrupt char */
#endif
X		tty.c_cc[VQUIT] = -1;			/* Quit char */
#ifdef NFGVMIN
X		tty.c_cc[VMIN] = 1;
#else
X		tty.c_cc[VMIN] = 3;	 /* This many chars satisfies reads */
#endif
X		tty.c_cc[VTIME] = 1;	/* or in this many tenths of seconds */
X
#ifdef POSIX
X		(void) tcsetattr(Tty, TCSADRAIN, &tty);
#else
X		(void) ioctl(Tty, TCSETAW, &tty);
#endif
X		did0 = TRUE;
X		return OK;
X	case 1:
X	case 3:
#ifdef POSIX
X		if(!did0)
X			(void) tcgetattr(Tty, &oldtty);
#else
X		if(!did0)
X			(void) ioctl(Tty, TCGETA, &oldtty);
#endif
X		tty = oldtty;
X
X		tty.c_iflag = n==3 ? (IXON|IXOFF) : IXOFF;
X
X		tty.c_lflag = 0;
X
X		tty.c_oflag = 0;
X
X		tty.c_cflag &= ~(CSIZE|PARENB);	/* disable parity */
X		tty.c_cflag |= CS8;	/* Set character size = 8 */
#ifdef NFGVMIN
X		tty.c_cc[VMIN] = 1; /* This many chars satisfies reads */
#else
X		tty.c_cc[VMIN] = HOWMANY; /* This many chars satisfies reads */
#endif
X		tty.c_cc[VTIME] = 1;	/* or in this many tenths of seconds */
#ifdef POSIX
X		(void) tcsetattr(Tty, TCSADRAIN, &tty);
#else
X		(void) ioctl(Tty, TCSETAW, &tty);
#endif
X		did0 = TRUE;
#ifdef POSIX
X		Baudrate = getspeed(cfgetospeed(&tty));
#else
X		Baudrate = getspeed(tty.c_cflag & CBAUD);
#endif
X		vfile("Baudrate = %u\n", Baudrate);
X		return OK;
#endif
#ifdef V7
X	/*
X	 *  NOTE: this should transmit all 8 bits and at the same time
X	 *   respond to XOFF/XON flow control.  If no FIONREAD or other
X	 *   rdchk() alternative, also must respond to INTRRUPT char
X	 *   This doesn't work with V7.  It should work with LLITOUT,
X	 *   but LLITOUT was broken on the machine I tried it on.
X	 */
X	case 2:		/* Un-raw mode used by sz, sb when -g detected */
X		if(!did0) {
X			ioctl(Tty, TIOCEXCL, 0);
X			ioctl(Tty, TIOCGETP, &oldtty);
X			ioctl(Tty, TIOCGETC, &oldtch);
#ifdef LLITOUT
X			ioctl(Tty, TIOCLGET, &Locmode);
#endif
X		}
X		tty = oldtty;
X		tch = oldtch;
#ifdef READCHECK
X		tch.t_intrc = Zmodem ? -1:030;	/* Interrupt char */
#else
X		tch.t_intrc = Zmodem ? 03:030;	/* Interrupt char */
#endif
X		tty.sg_flags |= (ODDP|EVENP|CBREAK);
X		tty.sg_flags &= ~(ALLDELAY|CRMOD|ECHO|LCASE);
X		ioctl(Tty, TIOCSETP, &tty);
X		ioctl(Tty, TIOCSETC, &tch);
#ifdef LLITOUT
X		ioctl(Tty, TIOCLBIS, &Locbit);
#else
X		bibi(99);	/* un-raw doesn't work w/o lit out */
#endif
X		did0 = TRUE;
X		return OK;
X	case 1:
X	case 3:
X		if(!did0) {
X			ioctl(Tty, TIOCEXCL, 0);
X			ioctl(Tty, TIOCGETP, &oldtty);
X			ioctl(Tty, TIOCGETC, &oldtch);
#ifdef LLITOUT
X			ioctl(Tty, TIOCLGET, &Locmode);
#endif
X		}
X		tty = oldtty;
X		tty.sg_flags |= (RAW|TANDEM);
X		tty.sg_flags &= ~ECHO;
X		ioctl(Tty, TIOCSETP, &tty);
X		did0 = TRUE;
X		Baudrate = getspeed(tty.sg_ospeed);
X		return OK;
#endif
X	case 0:
X		if(!did0)
X			return ERROR;
#ifdef USG
#ifdef POSIX
X		(void) tcdrain(Tty);	/* Wait for output to drain */
X		(void) tcflush(Tty, TCIFLUSH);	/* Flush input queue */
X		(void) tcsetattr(Tty, TCSADRAIN, &oldtty);	/* Restore */
X		(void) tcflow(Tty, TCOON);	/* Restart output */
#else
X		(void) ioctl(Tty, TCSBRK, 1);	/* Wait for output to drain */
X		(void) ioctl(Tty, TCFLSH, 1);	/* Flush input queue */
X		(void) ioctl(Tty, TCSETAW, &oldtty);	/* Restore modes */
X		(void) ioctl(Tty, TCXONC,1);	/* Restart output */
#endif
#endif
#ifdef V7
X		ioctl(Tty, TIOCSETP, &oldtty);
X		ioctl(Tty, TIOCSETC, &oldtch);
X		ioctl(Tty, TIOCNXCL, 0);
#ifdef LLITOUT
X		ioctl(Tty, TIOCLSET, &Locmode);
#endif
#endif
X
X		return OK;
X	default:
X		return ERROR;
X	}
}
X
sendbrk()
{
#ifdef V7
#ifdef TIOCSBRK
#define CANBREAK
X	sleep(1);
X	ioctl(Tty, TIOCSBRK, 0);
X	sleep(1);
X	ioctl(Tty, TIOCCBRK, 0);
#endif
#endif
#ifdef USG
#define CANBREAK
#ifdef POSIX
X	tcsendbreak(Tty, 200);
#else
X	ioctl(Tty, TCSBRK, 0);
#endif
#endif
}
X
/* Initialize tty device for serial file xfer */
inittty()
{
X	if ((Nametty = ttyname(2)) && *Nametty) {
X		Tty = open(Nametty, 2);
X	} else {
X		Tty = open(Nametty = "/dev/tty", 2);
X	}
X
X	if (Tty <= 0) {
X		perror(Nametty);  exit(2);
X	}
X	Ttystream = fdopen(Tty, "w");
}
X
flushmoc()
{
X	fflush(Ttystream);
}
flushmo()
{
X	fflush(Ttystream);
}
X
/*
X * This version of readline is reasoably well suited for
X * reading many characters.
X *
X * timeout is in tenths of seconds
X */
void
alrm(c)
{
X	longjmp(tohere, -1);
}
readline(timeout)
int timeout;
{
X	register n;
X	static char *cdq;	/* pointer for removing chars from linbuf */
X
X	if (--Lleft >= 0) {
X		if (Verbose > 8) {
X			fprintf(stderr, "%02x ", *cdq&0377);
X		}
X		return (*cdq++ & 0377);
X	}
X	n = timeout/10;
X	if (n < 2)
X		n = 2;
X	if (Verbose > 5)
X		fprintf(stderr, "Calling read: alarm=%d  Readnum=%d ",
X		  n, Readnum);
X	if (setjmp(tohere)) {
#ifdef TIOCFLUSH
/*		ioctl(Tty, TIOCFLUSH, 0); */
#endif
X		Lleft = 0;
X		if (Verbose>1)
X			fprintf(stderr, "Readline:TIMEOUT\n");
X		return TIMEOUT;
X	}
X	signal(SIGALRM, alrm); alarm(n);
X	errno = 0;
X	Lleft=read(Tty, cdq=linbuf, Readnum);
X	alarm(0);
X	if (Verbose > 5) {
X		fprintf(stderr, "Read returned %d bytes errno=%d\n",
X		  Lleft, errno);
X	}
X	if (Lleft < 1)
X		return TIMEOUT;
X	if (Verbose > 8) {
X		for (n = Lleft; --n >= 0; ) {
X			fprintf(stderr, "%02x ", *cdq&0377);
X		}
X		fprintf(stderr, "\n");
X	}
X	--Lleft;
X	return (*cdq++ & 0377);
}
X
X
X
/*
X * Purge the modem input queue of all characters
X */
purgeline()
{
X	Lleft = 0;
#ifdef USG
#ifdef POSIX
X	tcflush(Tty, 0);
#else
X	ioctl(Tty, TCFLSH, 0);
#endif
#else
X	lseek(Tty, 0L, 2);
#endif
}
X
X
/* send cancel string to get the other end to shut up */
canit()
{
X	static char canistr[] = {
X	 24,24,24,24,24,24,24,24,24,24,8,8,8,8,8,8,8,8,8,8,0
X	};
X
X	zmputs(canistr);
X	Lleft=0;	/* Do read next time ... */
}
X
/*
X * Send a string to the modem, processing for \336 (sleep 1 sec)
X *   and \335 (break signal)
X */
zmputs(s)
char *s;
{
X	register c;
X
X	while (*s) {
X		switch (c = *s++) {
X		case '\336':
X			sleep(1); continue;
X		case '\335':
X			sendbrk(); continue;
X		default:
X			sendline(c);
X		}
X	}
X	flushmo();
}
X
X
/* VARARGS1 */
vfile(f, a, b, c, d)
char *f;
long a, b, c, d;
{
X	if (Verbose > 2) {
X		fprintf(stderr, f, a, b, c, d);
X		fprintf(stderr, "\n");
X	}
}
X
/* End of rbsb.c */
SHAR_EOF
chmod 0644 rbsb.c ||
echo 'restore of rbsb.c failed'
Wc_c="`wc -c < 'rbsb.c'`"
test 10537 -eq "$Wc_c" ||
	echo 'rbsb.c: original size 10537, current size' "$Wc_c"
fi
# ============= minirb.c ==============
if test -f 'minirb.c' -a X"$1" != X"-c"; then
	echo 'x - skipping minirb.c (File already exists)'
else
echo 'x - extracting minirb.c (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'minirb.c' &&
char* Version= "minirb 3.02 12-21-94 Copyright 1994 Omen Technology INC";
#include <stdio.h>
#include <signal.h>
#include <setjmp.h>
X
FILE *fout; long Bytesleft; int Blklen; char secbuf[1024]; char linbuf[1024];
int Lleft=0; jmp_buf tohere;
X
void mode(n) { if (n) system("stty raw -echo"); else system("stty echo -raw"); }
X
void alrm(c) { longjmp(tohere, -1); }
X
void bibi(n) {
X  mode(0); fprintf(stderr, "minirb: signal %d; exiting", n); exit(128+n); }
X
main() {
X mode(1); if (signal(SIGINT, bibi) == SIG_IGN) {
X  signal(SIGINT, SIG_IGN); signal(SIGKILL, SIG_IGN); } else {
X  signal(SIGINT, bibi); signal(SIGKILL, bibi); }
X printf("%s\r\n\n\n", Version);
X printf("Send your files with a YAM/ZCOMM \042sb file ...\042 command\r\n");
X wcreceive(); mode(0); exit(0); }
X
wcreceive() {
X for (;;) {
X  if (wcrxpn(secbuf) == -1) break;
X  if (secbuf[0]==0) return;
X  if (procheader(secbuf)== -1 || wcrx()== -1) break; } }
X
wcrxpn(rpn) char *rpn; { register c;
et_tu:
X sendline(025); Lleft=0; while ((c = wcgetsec(rpn)) != 0) {
X  if (c == -10) { sendline(6); Lleft=0; rdln(2); goto et_tu; } return -1; }
X sendline(6); return 0; }
X
wcrx() { register int sectnum, sectcurr, sendchar, cblklen;
X sectnum=0; sendchar=025;
for (;;) {
X  sendline(sendchar); Lleft=0; sectcurr=wcgetsec(secbuf);
X  if (sectcurr==(sectnum+1 & 0377)) {
X   sectnum++; cblklen = Bytesleft>Blklen ? Blklen:Bytesleft;
X   fwrite(secbuf, cblklen, 1, fout);
X   if ((Bytesleft-=cblklen) < 0) Bytesleft = 0;
X   sendchar=6; }
X  else if (sectcurr==(sectnum&0377)) sendchar=6;
X  else if (sectcurr== -10) { fclose(fout); sendline(6); Lleft=0; return 0; }
X  else return -1; } }
X
wcgetsec(rxbuf) char *rxbuf; {
X register checksum, wcj, firstch; register char *p; int sectcurr, errors;
X for (errors=0; errors<15; errors++) {
X  if ((firstch=rdln(5))==2) { Blklen=1024; goto get2; }
X  if (firstch==1) { Blklen=128;
get2:
X   sectcurr=rdln(2); checksum=0;
X   if ((sectcurr+(rdln(2)))==0377) {
X    for (p=rxbuf,wcj=Blklen; --wcj>=0; ) {
X     if ((firstch=rdln(2)) < 0) goto bilge;
X     checksum += (*p++ = firstch); }
X    if ((firstch=rdln(2)) < 0) goto bilge;
X    if (((checksum-firstch)&0377)==0) return sectcurr;
X   } }
X  else if (firstch==4) return -10;
X  else if (firstch==24) return -1;
bilge: while(rdln(2)!= -2) ;
X  sendline(025); Lleft=0; }
X return -1; }
X
rdln(timeout) int timeout; { static char *cdq;
X if (--Lleft >= 0) return (*cdq++ & 0377);
X if (setjmp(tohere)) { Lleft = 0; return -2; }
X signal(SIGALRM, alrm); alarm(timeout);
X Lleft=read(0, cdq=linbuf, 1024); alarm(0);
X if (Lleft < 1) return -2;
X --Lleft; return (*cdq++ & 0377); }
X
procheader(name) char *name; { register char *p;
X Bytesleft = 2000000000L; p = name + 1 + strlen(name);
X if (*p) sscanf(p, "%ld", &Bytesleft);
X if ((fout=fopen(name, "w")) == NULL) return -1;
X return 0; }
X
sendline(c) { char d; d = c; write(1, &d, 1); }
X
/* End of minirb.c */
SHAR_EOF
chmod 0644 minirb.c ||
echo 'restore of minirb.c failed'
Wc_c="`wc -c < 'minirb.c'`"
test 2868 -eq "$Wc_c" ||
	echo 'minirb.c: original size 2868, current size' "$Wc_c"
fi
# ============= crc.doc ==============
if test -f 'crc.doc' -a X"$1" != X"-c"; then
	echo 'x - skipping crc.doc (File already exists)'
else
echo 'x - extracting crc.doc (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'crc.doc' &&
X
X
X
X     CCCCRRRRCCCC((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		CCCCRRRRCCCC((((1111))))
X
X
X
X     NNNNAAAAMMMMEEEE
X	  crc -	checksum files
X
X     SSSSYYYYNNNNOOOOPPPPSSSSIIIISSSS
X	  ccccrrrrcccc file ...
X
X     DDDDEEEESSSSCCCCRRRRIIIIPPPPTTTTIIIIOOOONNNN
X	  For each file, _c_r_c calculates	and prints a 32-bit CRC, the
X	  byte count, and the file name.  It is	typically used to
X	  validate files transferred between different systems,	and is
X	  useful in detecting subtle disk corruption.  _C_r_c uses	a
X	  checksum compatible with the DOS version of crc, the 32 bit
X	  CRC used by PKZIP, as	well as	the "crc" command in ZCOMM and
X	  Professional-YAM (high reliability communications programs).
X
X	  The 32-bit CRC used is the frame check sequence in ADCCP
X	  (ANSI	X3.66, also known as FIPS PUB 71 and FED-STD-1003, the
X	  U.S. versions	of CCITT's X.25	link-level protocol).
X
X	  32 bit CRC code courtesy Gary	S. Brown.
X
X     BBBBUUUUGGGGSSSS
X	  Although extremely unlikely, files with different data may
X	  still	produce	the same crc value.
X
X     SSSSEEEEEEEE AAAALLLLSSSSOOOO
X	  undos(OMEN), todos(OMEN), tocpm(OMEN), sum(1), wc(1).
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X     Page 1					     (printed 1/20/94)
X
X
X
SHAR_EOF
chmod 0644 crc.doc ||
echo 'restore of crc.doc failed'
Wc_c="`wc -c < 'crc.doc'`"
test 1492 -eq "$Wc_c" ||
	echo 'crc.doc: original size 1492, current size' "$Wc_c"
fi
# ============= minirb.doc ==============
if test -f 'minirb.doc' -a X"$1" != X"-c"; then
	echo 'x - skipping minirb.doc (File already exists)'
else
echo 'x - extracting minirb.doc (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'minirb.doc' &&
X
X
X
X     MMMMIIIINNNNIIIIRRRRBBBB((((1111))))	   OOOOmmmmeeeennnn	TTTTeeeecccchhhhnnnnoooollllooooggggyyyy IIIINNNNCCCC ((((OOOOMMMMEEEENNNN TTTTEEEECCCCHHHHNNNNOOOOLLLLOOOOGGGGYYYY))))     MMMMIIIINNNNIIIIRRRRBBBB((((1111))))
X
X
X
X     NNNNAAAAMMMMEEEE
X	  minirb - Bootstrap YMODEM file receive
X		     By	Chuck Forsberg Omen Technology INC
X		 "The High Reliability Communications Software"
X
X     SSSSYYYYNNNNOOOOPPPPSSSSIIIISSSS
X	  mmmmiiiinnnniiiirrrrbbbb
X
X     DDDDEEEESSSSCCCCRRRRIIIIPPPPTTTTIIIIOOOONNNN
X	  _M_i_n_i_r_b receives one or more files with YMODEM	file transfer
X	  protocol.  _M_i_n_i_r_b was	developed for use as a bootstrap to
X	  simplify uploading of	the longer _r_z and _s_z programs,
X	  contained in the _r_z_s_z._z_i_p "zip" archive or the _r_z_s_z._s_h shell
X	  archive.
X
X     SSSSEEEEEEEE AAAALLLLSSSSOOOO
X	  Professional-YAM manual
X
X     NNNNOOOOTTTTEEEESSSS
X	  The source file _m_i_n_i_r_b._c has been ruthlessly pruned (3k, 85
X	  lines) to simplify uploading without benefit of an error
X	  correcting file transfer protocol.  Do not reformat or add
X	  tabs to the source file as this will complicate uploading.
X
X	  _M_i_n_i_r_b uses the YMODEM header	file length information	to
X	  avoid	storing	extraneous characters on Unix.	_M_i_n_i_r_b uses 8
X	  bit checksum which may not be	compatible with	some programs
X	  claiming to support YMODEM transfers.	 Please	read the
X	  uploading suggestions	in the "_F_i_l_e _T_r_a_n_s_f_e_r _B_a_s_i_c_s"
X	  (Reg.)chapter	of the Professional-YAM	or ZCOMM user's
X	  manual.
X
X	  _M_i_n_i_r_b does not remove any characters	from uploaded files.
X	  The rz and sz	source files supplied by Omen Technology do
X	  not contain extraneous characters that would affect Unix C
X	  compilers.  Some PCDOS editors do add	extraneous characters;
X	  It may be necessary to remove	these with a Unix editor such
X	  as vi(1) or the undos(OMEN) program.
X
X	  _M_i_n_i_r_b calls the Unix	stty(1)	utility	to set and reset raw
X	  tty mode, avoiding sgtty/BSD/termio/POSIX incompatibilities.
X
X
X     SSSSEEEEEEEE AAAALLLLSSSSOOOO
X	  Omen Technology PPPPrrrrooooffffeeeessssssssiiiioooonnnnaaaallll----YYYYAAAAMMMM manual, undos(OMEN),
X	  crc(OMEN), wc(1).
X
X	  Minirb Copyright 1994	Omen Technology	INC All	Rights
X	  Reserved
X
X
X
X
X
X
X     Page 1					     (printed 4/21/95)
X
X
X
SHAR_EOF
chmod 0644 minirb.doc ||
echo 'restore of minirb.doc failed'
Wc_c="`wc -c < 'minirb.doc'`"
test 2727 -eq "$Wc_c" ||
	echo 'minirb.doc: original size 2727, current size' "$Wc_c"
fi
# ============= rz.doc ==============
if test -f 'rz.doc' -a X"$1" != X"-c"; then
	echo 'x - skipping rz.doc (File already exists)'
else
echo 'x - extracting rz.doc (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'rz.doc' &&
X
X
X
X     RRRRZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 RRRRZZZZ((((1111))))
X
X
X
X     NNNNAAAAMMMMEEEE
X	  rx, rc, rb, rz - Receive Files and Commands with X/Y/ZMODEM
X
X     SSSSYYYYNNNNOOOOPPPPSSSSIIIISSSS
X	  rrrrzzzz [-vvvv] [-wwwwWWWWIIIINNNNDDDDOOOOWWWW] [-ttttTTTTIIIIMMMMEEEEOOOOUUUUTTTT]
X	  rrrrbbbb [-vvvvyyyy] [-ttttTTTTIIIIMMMMEEEEOOOOUUUUTTTT]
X	  rrrrcccc [-vvvvyyyy] [-ttttTTTTIIIIMMMMEEEEOOOOUUUUTTTT] _f_i_l_e
X	  rrrrxxxx [-vvvvyyyy] [-ttttTTTTIIIIMMMMEEEEOOOOUUUUTTTT] _f_i_l_e
X	  ggggzzzz _f_i_l_e ...
X
X     LLLLIIIICCCCEEEENNNNSSSSEEEE AAAAGGGGRRRREEEEEEEEMMMMEEEENNNNTTTT
X	  This is a Copyrighted	shareware program.  Commercial use of
X	  this program is subject to licensing conditions detailed in
X	  the rz.c source code.	 "Commercial Use" includes any use of
X	  this program to receive files	from a commercial or shareware
X	  program not published	by Omen	Technology INC.
X
X	  Registration information is provided in the file mailer.rz.
X
X	  Use of this program constitutes agreement to the License
X	  Agreement.
X
X     SSSSUUUUPPPPPPPPOOOORRRRTTTT
X	  Users	who have not purchased support may dial	900-555-7836
X	  (900-555-RTFM) for technical assistance.  There is a charge
X	  of $4.69 per minute to use this support line.	 Callers must
X	  be 18	years or older.
X
X	  Registered users encountering	problems using this program on
X	  standard serial ports	to transfer files with Professional-
X	  YAM or ZCOMM may call	the support number listed in the
X	  Professional-YAM/ZCOMM documentation.	 Solutions to nearly
X	  all file transfer problems are described in the
X	  Professional-YAM/ZCOMM documentation.
X
X     DDDDEEEESSSSCCCCRRRRIIIIPPPPTTTTIIIIOOOONNNN
X	  This program uses error correcting protocols to receive
X	  files	over a dial-in serial port from	a variety of programs
X	  running under	PC-DOS,	CP/M, Unix, and	other operating
X	  systems.  It is invoked from a shell prompt manually,	or
X	  automatically	as a result of an "sz file ..."	command	given
X	  to the calling program.
X
X	  To obtain the	maximum	performance and	full functionality of
X	  this program we recommend its	use with GSZ, Professional-YAM
X	  or ZCOMM.
X
X	  This program is intended to interface	with terminal
X	  programs, not	to act as one.	This program is	not designed
X	  to be	called from _c_u(_1), _t_i_p(_1), or other communications
X	  programs.  Unix flavors of Omen Technology's Professional-
X	  YAM communications software are suitable for dial-out
X
X
X
X     Page 1					     (printed 3/19/96)
X
X
X
X
X
X
X     RRRRZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 RRRRZZZZ((((1111))))
X
X
X
X	  applications.	 Unix Professional-YAM supports	dial-out
X	  applications with telephone directory, a powerful script
X	  language with	learn function,	high quality multiple protocol
X	  support, and UUCP port arbitration.
X
X
X	  RRRRzzzz (Receive ZMODEM) receives one or more files with the
X	  ZMODEM protocol.  Pathnames are supplied by the sending
X	  program, and directories are created if necessary.  (See the
X	  example below.) if standard output is	not redirected to a
X	  file or pipe,	output is appended to a	file named "stdout".
X
X	  Normally, the	"rz" command is	automatically issued by	the
X	  calling ZMODEM program, but defective	ZMODEM implementations
X	  may require starting _r_z manually.
X
X	  RRRRbbbb receives file(s) with YMODEM, accepting either standard
X	  128 byte sectors or 1024 byte	sectors	(Pro-YAM/ZCOMM sb ----kkkk
X	  option).  The	user should determine when the 1024 byte block
X	  length actually improves throughput.
X
X	  If True YMODEM (Omen Technology trademark) file information
X	  (file	length,	etc.) is received, the file length controls
X	  the number of	bytes written to the output dataset, and the
X	  modify time and file mode (iff non zero) are set
X	  accordingly.
X
X	  If True YMODEM file information is not received, slashes in
X	  the pathname are changed to underscore, and any trailing
X	  period in the	pathname is eliminated.	 This conversion is
X	  useful for files received from CP/M and other	historical
X	  systems.
X
X	  RRRRcccc receives a	single _f_i_l_e with XMODEM-CRC or XMODEM-1k-CRC
X	  protocol.  The user should determine when the	1024 byte
X	  block	length actually	improves throughput without causing
X	  problems.  The user must supply the file name	to both
X	  sending and receiving	programs.  Up to 1023 garbage
X	  characters may be added to the received file.
X
X	  RRRRxxxx receives a	single _f_i_l_e with XMODEM	or XMODEM-1k protocol.
X	  The user should determine when the 1024 byte block length
X	  actually improves throughput without causing problems.  The
X	  user must supply the file name to both sending and receiving
X	  programs.  Up	to 1023	garbage	characters may be added	to the
X	  received file.
X
X	  GGGGzzzz is	a shell	script which calls _s_z to command Pro-YAM or
X	  ZCOMM	to transmit the	specified files.  Pathnames used with
X	  _g_z must be escaped if	they have special significance to the
X	  Unix shell.
X	  EXAMPLE: gz "-a C:*.c	D:*.h"
X
X
X
X     Page 2					     (printed 3/19/96)
X
X
X
X
X
X
X     RRRRZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 RRRRZZZZ((((1111))))
X
X
X
X	  If invoked with a leading ``v'', _r_z will report progress to
X	  /tmp/rzlog.
X	  EXAMPLE: ln rz vrz; rz=vrz; export rz
X
X	  If the SHELL environment variable includes _r_s_h or _r_k_s_h
X	  (restricted shell), _r_z will not accept absolute pathnames or
X	  references to	a parent directory, will not modify an
X	  existing file, and removes any files received	in error.
X
X
X	  The meanings of the available	options	are:
X
X	  ttttTTTTIIIIMMMMEEEEOOOOUUUUTTTT
X	       Change TIMEOUT to _T_I_M_E_O_U_T tenths	of seconds.
X	  vvvv    Verbose causes a	list of	file names to be appended to
X	       /tmp/rzlog .  More v's generate more detailed debugging
X	       output.
X	  wwwwWWWWIIIINNNNDDDDOOOOWWWW
X	       Use a receive window of WINDOW bytes.  Details in the
X	       Professional-YAM	user manual.
X	  (Pro-YAM command)
X	  <_A_L_T-_2>
X	  Pro-YAM Command: _s_z *._h *._c
X	  This automatically invokes _r_z	on the connected system, and
X	  sends	all .h and .c files in the current directory.
X
X	  _s_z -_n	-_R_f .
X	  This Professional-YAM	command	recursively follows the
X	  current directory tree (.) (Pro-YAM -R option), sends	the
X	  full relative	pathname (-f), for files that are newer	(-n)
X	  than their copies on the destination system.
X
X	  _r_z | _s_o_r_t >/_t_m_p/_s_o_r_t_e_d
X	  _s_z _O_N_A_M_E=- *._l_s_t
X	  The first command manually starts rrrrzzzz with output piped to
X	  the sort command.  The second	command	instructs
X	  Professional-YAM, ZCOMM, GSZ or DSZ to sene the files	using
X	  "-" as pathname, which instructs rrrrzzzz to output	the received
X	  data to its standard output.	The end	result is a single
X	  file containing all the lines	of the .lst files sorted
X	  alphabetically.
X
X
X
X     DDDDIIIIAAAAGGGGNNNNOOOOSSSSTTTTIIIICCCCSSSS
X	  Exit status is as follows: 0 for successful transfers.  1 if
X	  unrecoverable	errors are detected.  2	if syntax errors or
X	  file access problems are detected.  3	if the program was
X	  terminated by	a caught interrupt.
X
X
X     SSSSEEEEEEEE AAAALLLLSSSSOOOO
X
X
X
X     PPPPaaaaggggeeee 3333					     ((((pppprrrriiiinnnntttteeeedddd 3333////11119999////99996666))))
X
X
X
X
X
X
X     RRRRZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 RRRRZZZZ((((1111))))
X
X
X
X	  Professional-YAM, ZCOMM, DSZ,	crc(omen), sz(omen),
X	  usq(omen), undos(omen)
X
X	  Compile time options required	for various operating systems
X	  are described	in the source file.
X
X     SSSSEEEERRRRVVVVEEEERRRR////NNNNEEEETTTTWWWWOOOORRRRKKKK NNNNOOOOTTTTEEEESSSS
X	  Terminals on some timesharing	systems	are connected
X	  indirectly to	the host with TTTTEEEERRRRMMMMIIIINNNNAAAALLLL SSSSEEEERRRRVVVVEEEERRRRSSSS operating over
X	  networks.  Terminal servers often interfere with file
X	  transfers by "eating"	control	characters and/or losing data.
X
X	  Accessing a distant system using tttteeeellllnnnneeeetttt on a local Unix
X	  system entails the same problems.  If	tttteeeellllnnnneeeetttt does not	work
X	  well,	try rrrrllllooooggggiiiinnnn with	the ----8888 option.	Set the	escape
X	  character to ^P (control P) which is protected by ZMODEM.
X
X	  When terminal	servers	interfere with file transfers, server
X	  commands are often available to help the problem.  When
X	  possible, enable the server and modems for hardware flow
X	  control in and out.  Set the terminal	server to telnet
X	  transparent mode.  Some typical commands are "SET TERMINAL
X	  DOWNLOAD", "set session passall", and	"SET TERMINAL NO ESC",
X	  but there is no standard set of commands suitable for	all
X	  terminal servers.  Normally these commands are given before
X	  attempting file transfers, but one user has reported that
X	  the command must be given _a_f_t_e_r the file transfer is
X	  started(!).  Until terminal server vendors improve the
X	  quality of their product, you	may have to get	on their case
X	  until	they adequately	support	high performance file
X	  transfers.
X
X	  Escaping control characters with ZMODEM (sz -e) may help if
X	  the transfer gets stuck in the same place on every attempt.
X	  Professional-YAM and ZCOMM allow selection of	which control
X	  characters need to be	escaped.  In extreme cases 7-bit
X	  transmission may be required (see the	Professional-YAM/ZCOMM
X	  manual).  If you encounter problems with control characters
X	  you should identify which control characters are causing the
X	  problem.  Please refer to the	sz -T command in sz.doc	for
X	  more help.
X
X	  Flow control between the server and modem is often
X	  defective.  This rarely causes a problem in interactive
X	  applications whose short bursts (a screenfull	at most) fit
X	  within the available memory buffers.	Streaming protocols
X	  such as YMODEM-g, long packet	SuperKermit, and ZMODEM	can
X	  overload the available buffering.  Some terminal servers
X	  support commands to enable hardware flow control such	as
X	  "TERM	FLOWCONTROL HARDWARE IN	OUT"; this assumes the modem
X	  attached to the server is properly configured.
X
X
X
X
X     Page 4					     (printed 3/19/96)
X
X
X
X
X
X
X     RRRRZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 RRRRZZZZ((((1111))))
X
X
X
X	  If the terminal server is too	brain damaged to support flow
X	  control, ZMODEM lets you fake	it by setting a	window size.
X	  Try
X	       sz -w2048 file...
X	  to enable software flow control.  Experiment with different
X	  window sizes for best	results.
X
X	  Terminal servers are designed	to accept keyboard input from
X	  human	operators.  They may lose data when a program sends
X	  more data to the host	faster than humans type.  Some servers
X	  allow	larger input buffers to	support	file uploads.  If you
X	  can upload short files (less than 100	bytes) but not longer
X	  files, try
X	       sz -w1024 file...
X	  with your uploading program.	(Not all programs support this
X	  option; use ZCOMM or Professional-YAM.)
X
X	  When both flow control and character transparency are
X	  problems, use
X	       sz -ew1024 file...
X	  as a starting	point.
X
X	  Sometimes the	terminal server	software is defective and must
X	  be corrected.	 Please	contact	the network's vendor for
X	  corrective procedures.  An alternative is to install direct
X	  serial ports for users desiring to upload files.
X
X	  We have also encountered problems when networking software
X	  fails	to pass	data after a large amount of data has been
X	  sent to the host.  This has happened on a PPP	internet
X	  connection which prevented uploads of	large amounts of data
X	  via either FTP or a ZMODEM upload (via TELNET).  The PPP
X	  connection grinds to a standstill and	not even PING works.
X	  The same ZMODEM/TELNET combination easily uploaded ten times
X	  as much to a nearby machine connected	by Ethernet.
X
X
X     PPPPOOOORRRRTTTT WWWWAAAATTTTCCCCHHHHEEEERRRRSSSS
X	  Some systems enforce a timeout which disconnects a user
X	  after	several	minutes	of keyboard inactivity.	 Long, error
X	  free ZMODEM transfers	do not generate	keyboard activity
X	  (this	is why ZMODEM is so efficient).	 Restricting the
X	  window size with
X	       sz -w16384 file...
X	  option generates terminal input at regular intervals even
X	  when no error	correction is needed.  If problems persist,
X	  try setting a	packet length.
X	       sz -l1024 file...
X	  (The default ZMODEM packet length is the file	length.)
X
X     NNNNOOOOTTTTEEEESSSS
X	  ZMODEM's support of XOFF/XON flow control allows proper
X
X
X
X     Page 5					     (printed 3/19/96)
X
X
X
X
X
X
X     RRRRZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 RRRRZZZZ((((1111))))
X
X
X
X	  operation in many environments that do not support XMODEM
X	  uploads.  Unfortunately, not all Unix	versions support input
X	  flow control.	 The TTY input buffering on some systems may
X	  not adequately buffer	long blocks or streaming input at high
X	  speed.  You should suspect this problem when you can't send
X	  data to the Unix system at high speeds using ZMODEM,
X	  YMODEM-1k or XMODEM-1k, but YMODEM with 128 byte blocks
X	  works	properly.
X
X	  The DSZ or Pro-YAM zzzzmmmmooooddddeeeemmmm llll numeric parameter	may be set to
X	  a value between 64 and 1024 to limit the burst length
X	  ("zmodem pl128").  Although this compromises ZMODEM's
X	  throughput, ZMODEM's superior	reliability remains intact.
X
X	  If a program that does not properly implement	the specified
X	  file transfer	protocol causes	_r_z to "hang" the port after a
X	  failed transfer, either wait for _r_z to time out or keyboard
X	  a dozen Ctrl-X characters.  Every reported instance of this
X	  problem has been corrected by	using ZCOMM, Pro-YAM, DSZ, or
X	  other	program	with a correct implementation of the specified
X	  protocol.
X
X	  Many programs	claiming to support YMODEM only	support	XMODEM
X	  with 1k blocks, and they often don't get that	quite right.
X
X	  In the case of a few poorly designed microcomputers, sending
X	  serial data to a tty port at sustained high speeds has been
X	  known	to cause lockups, system halts,	kernel panics, and
X	  occasional antisocial	behaviour.  This problem is not	unique
X	  to _r_z; newer versions	of Kermit, CRT terminals with screen
X	  transmission,	and line noise have the	same effect.  When
X	  experimenting	with high speed	input to a system, consider
X	  rebooting the	system if the file transfers are not
X	  successful, especially if the	personality of the system
X	  appears altered.
X
X	  The Unix "ulimit" parameter must be set high enough to
X	  permit large file transfers to Unix.
X
X	  Telebit modems must not be set to "spoof" UUCP, XMODEM,
X	  YMODEM, or KERMIT.  Setting one of these spoofing modes
X	  interferes with other	protocols.  Telebit's YMODEM spoofing
X	  interferes with YMODEM transfers.
X
X	  32 bit CRC code courtesy Gary	S. Brown.  Directory creation
X	  code from John Gilmore's PD TAR program.
X
X     NNNNEEEETTTTWWWWOOOORRRRKKKK NNNNOOOOTTTTEEEESSSS
X	  Escaping all control characters (sz -e) may help if the
X	  transfer gets	stuck in the same place	on every attempt.
X	  Professional-YAM and ZCOMM allow selection of	which control
X	  characters need to be	escaped.
X
X
X
X     Page 6					     (printed 3/19/96)
X
X
X
X
X
X
X     RRRRZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 RRRRZZZZ((((1111))))
X
X
X
X	  In extreme cases 7-bit transmission may be required (see
X	  Professional-YAM/ZCOMM manual).  7-bit transmission requires
X	  rz version 4.50 or higher.
X
X	  Please refer to the sz -T command in sz.doc for more help.
X
X     BBBBUUUUGGGGSSSS
X	  This version of _r_z does not support some ZMODEM features.
X	  Unix flavors of Professional-YAM may be linked to "rz" to
X	  support these	features.
X
X	  The ASCII option's CR/LF to NL translation merely deletes
X	  CR's;	undos(omen) performs a more intelligent	translation.
X
X     ZZZZMMMMOOOODDDDEEEEMMMM CCCCAAAAPPPPAAAABBBBIIIILLLLIIIITTTTIIIIEEEESSSS
X	  _R_z supports ZMODEM command execution (zcommand), incoming
X	  ZMODEM binary	(-b), ASCII (-a), escape controls (-e),
X	  newer(-n), newer+longer(-N), protect (-p), Crash Recovery(-
X	  r), clobber (-y), match+clobber (-Y),	compression(-Z), and
X	  append (-+) requests.	 Other options sent by the sender are
X	  ignored.  The	default	is protect (-p)	and binary (-b).
X
X	  Unix Professional-YAM	provides higher	performance and	other
X	  features not supported by _r_z.	Please contact Omen Technology
X	  Inc for product information.
X
X	  Omen Technology INC
X	  Post Office Box 4681
X	  Portland OR 97208
X	  503-614-0430 (Sales)
X	  900-555-RTFM (Unregistered user Technical Support)
X
X
X     FFFFIIIILLLLEEEESSSS
X	  rz.c,	crctab.c, rbsb.c, zm.c,	zmr.c, zmodem.h, rz.1
X
X	  /tmp/rzlog stores debugging output generated with -vv	option
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X     Page 7					     (printed 3/19/96)
X
X
X
SHAR_EOF
chmod 0664 rz.doc ||
echo 'restore of rz.doc failed'
Wc_c="`wc -c < 'rz.doc'`"
test 18722 -eq "$Wc_c" ||
	echo 'rz.doc: original size 18722, current size' "$Wc_c"
fi
# ============= sz.doc ==============
if test -f 'sz.doc' -a X"$1" != X"-c"; then
	echo 'x - skipping sz.doc (File already exists)'
else
echo 'x - extracting sz.doc (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'sz.doc' &&
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X     NNNNAAAAMMMMEEEE
X	  sx, sb, sz - Send Files with ZMODEM, YMODEM, or XMODEM
X	  zcommand, zcommandi -	Send Commands with ZMODEM
X
X     SSSSYYYYNNNNOOOOPPPPSSSSIIIISSSS
X	  sz [-++++aaaabbbbddddeeeeffffkkkkLLLLllllNNNNnnnnooooppppttttuuuuvvvvxxxxyyyyYYYYZZZZ] _f_i_l_e ...
X	  sb [-ddddffffkkkkttttuuuuvvvv] _f_i_l_e ...
X	  sx [-kkkkttttuuuuvvvv] _f_i_l_e
X	  zcommand [-oooottttvvvv] CCCCOOOOMMMMMMMMAAAANNNNDDDD
X	  zcommandi [-oooottttvvvv] CCCCOOOOMMMMMMMMAAAANNNNDDDD
X	  sz -T
X
X
X     LLLLIIIICCCCEEEENNNNSSSSEEEE AAAAGGGGRRRREEEEEEEEMMMMEEEENNNNTTTT
X	  This is a copyrighted	shareware program.  Commercial use of
X	  this program is subject to licensing conditions detailed in
X	  the rz.c source code.	 "Commercial Use" includes any use of
X	  this program to send files to	a commercial or	shareware
X	  program not published	or licensed by Omen Technology INC.
X
X	  Registration information is provided in the file mailer.rz.
X
X	  Use of this program constitutes agreement to the License
X	  Agreement.
X
X     SSSSUUUUPPPPPPPPOOOORRRRTTTT
X	  Users	who have not purchased support may dial	900-555-7836
X	  (900-555-RTFM) for technical assistance.  There is a charge
X	  of $4.69 per minute to use this support line.	 Callers must
X	  be 18	years or older.
X
X	  Registered users encountering	problems using this program on
X	  standard serial ports	to transfer files with Professional-
X	  YAM or ZCOMM may call	the support number listed in the
X	  Professional-YAM/ZCOMM documentation.	 Solutions to nearly
X	  all file transfer problems are described in the
X	  Professional-YAM/ZCOMM documentation.
X
X     DDDDEEEESSSSCCCCRRRRIIIIPPPPTTTTIIIIOOOONNNN
X	  SSSSzzzz (send ZMODEM) uses	the ZMODEM, YMODEM or XMODEM error
X	  correcting protocol to send one or more files	over a dial-in
X	  serial port to a variety of programs running under PC-DOS,
X	  CP/M,	Unix, VMS, and other operating systems.
X
X	  To obtain the	maximum	performance and	full functionality of
X	  this program we recommend its	use with GSZ, Professional-YAM
X	  or ZCOMM.
X
X	  This program is intended to interface	with terminal
X	  programs, not	to act as one.	This program is	not designed
X	  to be	called from _c_u(_1) _t_i_p(_1), or other communications
X	  programs.  Unix flavors of Omen Technology's Professional-
X
X
X
X     Page 1					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X	  YAM communications software are available for	dial-out
X	  applications.	 Unix Professional-YAM supports	dial-out
X	  applications with telephone directory, a powerful script
X	  language with	learn function,	high quality multiple protocol
X	  support, and UUCP port arbitration.
X
X	  SSSSzzzz sends one or more files with ZMODEM protocol.
X
X	  ZMODEM greatly simplifies file transfers compared to XMODEM.
X	  In addition to a friendly user interface, ZMODEM provides
X	  Personal Computer and	other users an efficient, accurate,
X	  and robust file transfer method.
X
X	  ZMODEM provides complete EEEENNNNDDDD----TTTTOOOO----EEEENNNNDDDD data integrity between
X	  application programs.	 ZMODEM's 32 bit CRC catches errors
X	  that sneak into even the most	advanced networks.
X
X	  Advanced file	management features include AutoDownload
X	  (Automatic file Download initiated without user
X	  intervention), Display of individual and total file lengths
X	  and transmission time	estimates, Crash Recovery, selective
X	  file transfers, and preservation of exact file date and
X	  length.
X
X	  The ----yyyy option	instructs the receiver to open the file	for
X	  writing unconditionally.  The	----aaaa option causes the receiver
X	  to convert Unix newlines to PC-DOS carriage returns and
X	  linefeeds.
X
X
X	  SSSSbbbb sends one or more files with YMODEM or ZMODEM protocol.
X	  The initial ZMODEM initialization is not sent.  When
X	  requested by the receiver, ssssbbbb	supports YYYYMMMMOOOODDDDEEEEMMMM----gggg with
X	  "cbreak" tty mode, XON/XOFF flow control, and	interrupt
X	  character set	to CAN (^X).  YYYYMMMMOOOODDDDEEEEMMMM----gggg (Professional-YAM gggg
X	  option) increases YMODEM throughput over error free channels
X	  (direct connection, X.PC, etc.) by disabling error recovery.
X
X	  On Unix systems, additional information about	the file is
X	  transmitted.	If the receiving program uses this
X	  information, the transmitted file length controls the	exact
X	  number of bytes written to the output	dataset, and the
X	  modify time and file mode are	set accordingly.
X
X
X	  SSSSxxxx sends a single _f_i_l_e with XXXXMMMMOOOODDDDEEEEMMMM or	XXXXMMMMOOOODDDDEEEEMMMM----1111kkkk protocol
X	  (sometimes incorrectly called	"ymodem").  The	user must
X	  supply the file name to both sending and receiving programs.
X
X	  Iff sssszzzz is invoked with $SHELL	set and	iff that variable
X	  contains the string _r_s_h or _r_k_s_h (restricted shell), sssszzzz
X	  operates in restricted mode.	Restricted mode	restricts
X
X
X
X     Page 2					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X	  pathnames to the current directory and PUBDIR	(usually
X	  /usr/spool/uucppublic) and/or	subdirectories thereof.
X
X
X	  The fourth form sends	a single COMMAND to a ZMODEM receiver
X	  for execution.  ZZZZccccoooommmmmmmmaaaannnndddd exits with the COMMAND return
X	  value.  If COMMAND includes spaces or	characters special to
X	  the shell, it	must be	quoted.
X
X
X	  The fifth form sends a single	COMMAND	to a ZMODEM receiver
X	  for execution.  ZZZZccccoooommmmmmmmaaaannnnddddiiii exits as soon as the receiver has
X	  correctly received the command, before it is executed.
X
X
X	  The sixth form (sz -T) outputs all 256 code combinations to
X	  the terminal.	 The hex value of the character, a space, and
X	  the raw character are	sent, 8	per line.  In you are having
X	  difficulty sending files, this command lets you see which
X	  character codes are being eaten by the operating system or
X	  network.  The	terminal program must be set to	display	all
X	  256 codes in a distinct form.	 Check that each code is sent,
X	  and that the 8th bit on codes	0x80 to	0xFF is	set.
X
X	  Sz -T	then allows the	caller to input	characters which are
X	  echoed in hex.  You should check that	all control characters
X	  can be input this way.
X
X
X
X	  The meanings of the available	options	are:
X
X	  ++++    Instruct	the receiver to	append transmitted data	to an
X	       existing	file (ZMODEM only).
X	  aaaa    Instruct	the ZMODEM receiver to convert text file
X	       format as appropriate for the receiving system.	Valid
X	       only for	ZMODEM.
X	  bbbb    (ZMODEM)	Binary override: transfer file without any
X	       translation.
X	  cccc    Instruct	the receiver to	change the pathname if the
X	       destination file	exists.
X	  dddd    Change all instances of "." to "/" in the transmitted
X	       pathname.  Thus,	C.omenB0000 (which is unacceptable to
X	       MSDOS or	CP/M) is transmitted as	C/omenB0000.  If the
X	       resultant filename has more than	8 characters in	the
X	       stem, a "." is inserted to allow	a total	of eleven.
X	  eeee    Escape all control characters and the all ones
X	       character (0xFF); normally only XON, XOFF, and Ctrl-X
X	       are escaped.
X	  ffff    Send Full pathname.  Normally directory prefixes	are
X	       stripped	from the transmitted filename.
X	  gggg    Send ESC-[-?-3-4-l to start DSZ from Kermit.
X
X
X
X     Page 3					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X	  kkkk    (XMODEM/YMODEM) Send files using	1024 byte blocks
X	       rather than the default 128 byte	blocks.	 1024 byte
X	       packets speed file transfers at high bit	rates.
X	       (ZMODEM streams the data	for the	best possible
X	       throughput.)
X	  LLLLNNNN   Use ZMODEM sub-packets of length	N.  A larger N (32 <=
X	       N <= 1024) gives	slightly higher	throughput, a smaller
X	       N speeds	error recovery.	 The default is	128 below 300
X	       baud, 256 above 300 baud, or 1024 above 2400 baud.
X	  llllNNNN   Wait for	the receiver to	acknowledge correct data every
X	       NNNN (32 <=	N) characters.	This may be used to avoid
X	       network overrun when XOFF flow control is lacking.
X	  nnnn    (ZMODEM)	Send each file if destination file does	not
X	       exist.  Overwrite destination file if source file is
X	       newer than the destination file.
X	  NNNN    (ZMODEM)	Send each file if destination file does	not
X	       exist.  Overwrite destination file if source file is
X	       newer or	longer than the	destination file.
X	  oooo    (ZMODEM)	Disable	automatic selection of 32 bit CRC.
X	  pppp    (ZMODEM)	Protect	existing destination files by skipping
X	       transfer	if the destination file	exists.
X	  rrrr    (ZMODEM)	Resume interrupted file	transfer.  If the
X	       source file is longer than the destination file,	the
X	       transfer	commences at the offset	in the source file
X	       that equals the length of the destination file.
X	  rrrrrrrr   As above, but compares the files	(the portion common to
X	       sender and receiver) before resuming the	transfer.
X	  ttttttttiiiimmmm Change timeout to _t_i_m tenths of seconds.
X	  uuuu    Unlink the file after successful	transmission.  Users
X	       should not manually abort or skip file transfers	when
X	       this option is used.
X	  wwwwNNNN   Limit the transmit window size to N bytes (ZMODEM).
X	  vvvv    Verbose causes a	list of	file names to be appended to
X	       /tmp/szlog .  More v's generate more output.
X	  xxxx    Count skipped files as errors.
X	  yyyy    Instruct	a ZMODEM receiving program to overwrite	any
X	       existing	file with the same name.
X	  YYYY    Instruct	a ZMODEM receiving program to overwrite	any
X	       existing	file with the same name, and to	skip any
X	       source files that do have a file	with the same pathname
X	       on the destination system.
X	  ZZZZ    Use ZMODEM file compression to speed file transfer.
X
X     DDDDIIIIAAAAGGGGNNNNOOOOSSSSTTTTIIIICCCCSSSS
X	  Exit status is as follows: 0 for successful transfers.  1 if
X	  unrecoverable	errors are detected.  2	if syntax errors or
X	  file access problems are detected.  3	if the program was
X	  terminated by	a caught interrupt.
X
X     EEEEXXXXAAAAMMMMPPPPLLLLEEEESSSS
X
X
X
X
X
X     Page 4					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X	  ZZZZMMMMOOOODDDDEEEEMMMM FFFFiiiilllleeee TTTTrrrraaaannnnssssffffeeeerrrr (Unix to	DSZ/ZCOMM/Professional-YAM)
X	  %%%% sssszzzz ----aaaa ****....cccc
X	  This single command transfers	all .c files in	the current
X	  Unix directory with conversion (----aaaa) to end of	line
X	  conventions appropriate to the receiving environment.	 With
X	  ZMODEM AutoDownload enabled, Professional-YAM	 and ZCOMM
X	  will automatically receive the files after performing	a
X	  security check.
X
X	  %%%% sssszzzz ----YYYYaaaannnn ****....cccc	****....hhhh
X	  Send only the	.c and .h files	that exist on both systems,
X	  and are newer	on the sending system than the corresponding
X	  version on the receiving system, converting Unix to DOS text
X	  format.
X
X	  ZZZZMMMMOOOODDDDEEEEMMMM CCCCoooommmmmmmmaaaannnndddd DDDDoooowwwwnnnnllllooooaaaadddd (Unix	to Professional-YAM)
X	   cpszall:all
X	      zcommand "c:;cd /yam/dist"
X	      sz -ya $(YD)/*.me
X	      sz -yb y*.exe
X	      zcommand "cd /yam"
X	      zcommandi	"!insms"
X	  This Makefile	fragment uses zzzzccccoooommmmmmmmaaaannnndddd to issue	commands to
X	  Professional-YAM to change current disk and directory.
X	  Next,	sssszzzz transfers the ._m_e files from	the $YD	directory,
X	  commanding the receiver to overwrite the old files and to
X	  convert from Unix end	of line	conventions to PC-DOS
X	  conventions.	The third line transfers some ._e_x_e files.  The
X	  fourth and fifth lines command Pro-YAM to change directory
X	  and execute a	PC-DOS batch file _i_n_s_m_s	. Since	the batch file
X	  takes	considerable time, the zzzzccccoooommmmmmmmaaaannnnddddiiii form is used to allow
X	  the program to exit immediately.
X
X	  XXXXMMMMOOOODDDDEEEEMMMM FFFFiiiilllleeee TTTTrrrraaaannnnssssffffeeeerrrr (Unix to	Crosstalk)
X	  % ssssxxxx ffffoooooooo....cccc
X	  EEEESSSSCCCC
X	  rrrrxxxx ffffoooooooo....cccc
X	  The above three commands transfer a single file from Unix to
X	  a PC and Crosstalk.  This combination	is much	slower and
X	  less reliable	than ZMODEM.
X
X     EEEERRRRRRRROOOORRRR MMMMEEEESSSSSSSSAAAAGGGGEEEESSSS
X	  "Caught signal 99" indicates the program was not properly
X	  compiled, refer to "bibi(99)"	in rbsb.c for details.
X
X     SSSSEEEEEEEE AAAALLLLSSSSOOOO
X	  rz(omen), ZCOMM User's Manual, Professional-YAM User's
X	  Manual, crc(omen), sq(omen), todos(omen), tocpm(omen),
X	  tomac(omen), yam(omen)
X
X	  Compile time options required	for various operating systems
X	  are described	in the source file.
X
X
X
X     Page 5					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X     FFFFIIIILLLLEEEESSSS
X	  32 bit CRC code courtesy Gary	S. Brown.
X
X	  sz.c,	crctab.c, rbsb.c, zm.c,	zmr.c, zmodem.h	Unix source
X	  files
X
X	  /tmp/szlog stores debugging output (sz -vv)
X
X     TTTTEEEESSSSTTTTIIIINNNNGGGG FFFFEEEEAAAATTTTUUUURRRREEEE
X	  The command "sz -T file" exercises the AAAAttttttttnnnn sequence error
X	  recovery by commanding errors	with unterminated packets.
X	  The receiving	program	should complain	five times about
X	  binary data packets being too	long.  Each time sssszzzz is
X	  interrupted, it should send a	ZDATA header followed by
X	  another defective packet.  If	the receiver does not detect
X	  five long data packets, the AAAAttttttttnnnn sequence is not
X	  interrupting the sender, and the MMMMyyyyaaaattttttttnnnn string in sssszzzz....cccc must
X	  be modified.
X
X	  After	5 packets, sssszzzz stops the	"transfer" and prints the
X	  total	number of characters "sent" (Tcount).  The difference
X	  between Tcount and 5120 represents the number	of characters
X	  stored in various buffers when the Attn sequence is
X	  generated.
X
X     SSSSEEEERRRRVVVVEEEERRRR////NNNNEEEETTTTWWWWOOOORRRRKKKK NNNNOOOOTTTTEEEESSSS
X	  Terminals on some timesharing	systems	are connected
X	  indirectly to	the host with TTTTEEEERRRRMMMMIIIINNNNAAAALLLL SSSSEEEERRRRVVVVEEEERRRRSSSS operating over
X	  networks.  Terminal servers often interfere with file
X	  transfers by "eating"	control	characters and/or losing data.
X
X	  Accessing a distant system using tttteeeellllnnnneeeetttt on a local Unix
X	  system entails the same problems.  If	tttteeeellllnnnneeeetttt does not	work
X	  well,	try rrrrllllooooggggiiiinnnn with	the ----8888 option.	Set the	escape
X	  character to ^P (control P) which is protected by ZMODEM.
X
X	  When terminal	servers	interfere with file transfers, server
X	  commands are often available to help the problem.  When
X	  possible, enable the server and modems for hardware flow
X	  control in and out.  Set the terminal	server to telnet
X	  transparent mode.  Some typical commands are "SET TERMINAL
X	  DOWNLOAD", "set session passall", and	"SET TERMINAL NO ESC",
X	  but there is no standard set of commands suitable for	all
X	  terminal servers.  Normally these commands are given before
X	  attempting file transfers, but one user has reported that
X	  the command must be given _a_f_t_e_r the file transfer is
X	  started(!).  Until terminal server vendors improve the
X	  quality of their product, you	may have to get	on their case
X	  until	they adequately	support	high performance file
X	  transfers.
X
X	  Escaping control characters with ZMODEM (sz -e) may help if
X
X
X
X     Page 6					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X	  the transfer gets stuck in the same place on every attempt.
X	  Professional-YAM and ZCOMM allow selection of	which control
X	  characters need to be	escaped.  In extreme cases 7-bit
X	  transmission may be required (see the	Professional-YAM/ZCOMM
X	  manual).  If you encounter problems with control characters
X	  you should identify which control characters are causing the
X	  problem.  Please refer to the	sz -T command in sz.doc	for
X	  more help.
X
X	  Flow control between the server and modem is often
X	  defective.  This rarely causes a problem in interactive
X	  applications whose short bursts (a screenfull	at most) fit
X	  within the available memory buffers.	Streaming protocols
X	  such as YMODEM-g, long packet	SuperKermit, and ZMODEM	can
X	  overload the available buffering.  Some terminal servers
X	  support commands to enable hardware flow control such	as
X	  "TERM	FLOWCONTROL HARDWARE IN	OUT"; this assumes the modem
X	  attached to the server is properly configured.
X
X	  If the terminal server is too	brain damaged to support flow
X	  control, ZMODEM lets you fake	it by setting a	window size.
X	  Try
X	       sz -w2048 file...
X	  to enable software flow control.  Experiment with different
X	  window sizes for best	results.
X
X	  Terminal servers are designed	to accept keyboard input from
X	  human	operators.  They may lose data when a program sends
X	  more data to the host	faster than humans type.  Some servers
X	  allow	larger input buffers to	support	file uploads.  If you
X	  can upload short files (less than 100	bytes) but not longer
X	  files, try
X	       sz -w1024 file...
X	  with your uploading program.	(Not all programs support this
X	  option; use ZCOMM or Professional-YAM.)
X
X	  When both flow control and character transparency are
X	  problems, use
X	       sz -ew1024 file...
X	  as a starting	point.
X
X	  Sometimes the	terminal server	software is defective and must
X	  be corrected.	 Please	contact	the network's vendor for
X	  corrective procedures.  An alternative is to install direct
X	  serial ports for users desiring to upload files.
X
X	  We have also encountered problems when networking software
X	  fails	to pass	data after a large amount of data has been
X	  sent to the host.  This has happened on a PPP	internet
X	  connection which prevented uploads of	large amounts of data
X	  via either FTP or a ZMODEM upload (via TELNET).  The PPP
X	  connection grinds to a standstill and	not even PING works.
X
X
X
X     Page 7					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X	  The same ZMODEM/TELNET combination easily uploaded ten times
X	  as much to a nearby machine connected	by Ethernet.
X
X
X     PPPPOOOORRRRTTTT WWWWAAAATTTTCCCCHHHHEEEERRRRSSSS
X	  Some systems enforce a timeout which disconnects a user
X	  after	several	minutes	of keyboard inactivity.	 Long, error
X	  free ZMODEM transfers	do not generate	keyboard activity
X	  (this	is why ZMODEM is so efficient).	 Restricting the
X	  window size with
X	       sz -w16384 file...
X	  option generates terminal input at regular intervals even
X	  when no error	correction is needed.  If problems persist,
X	  try setting a	packet length.
X	       sz -l1024 file...
X	  (The default ZMODEM packet length is the file	length.)
X
X     NNNNOOOOTTTTEEEESSSS
X	  SSSSzzzz is	now compiled with internal buffering to	allow sending
X	  datasets piped to its	standard input.
X	       ps -ef |	sz -
X	  The file is sent as "szPID" where PID	is the process ID of
X	  sending sz.
X
X	  Particular attention must be paid to flow control.  The
X	  modem	and Unix must agree on the flow	control	method.	 Sz
X	  does not set or reset	flow control modes (if any).  Most
X	  Unix systems use XON/XOFF ("software") flow control.
X
X	  Telebit modems must not be set to "spoof" UUCP, XMODEM,
X	  YMODEM, or KERMIT.  Setting one of these spoofing modes
X	  interferes with other	protocols.  Telebit's YMODEM spoofing
X	  interferes with YMODEM transfers.
X
X	  If a program that does not properly implement	the specified
X	  file transfer	protocol causes	_s_b to "hang" the port after a
X	  failed transfer, either wait for _s_b to time out or keyboard
X	  a dozen Ctrl-X characters.  Every reported instance of this
X	  problem has been corrected by	using ZCOMM, Pro-YAM, DSZ, or
X	  other	program	with a correct implementation of the specified
X	  protocol.
X
X	  Many programs	claiming to support YMODEM only	support	XMODEM
X	  with 1k blocks, and they often don't get that	quite right.
X	  XMODEM transfers add up to 127 garbage bytes per file.
X	  XMODEM-1k and	YMODEM-1k transfers use	128 byte blocks	to
X	  avoid	extra padding.
X
X	  YMODEM programs use the file length transmitted at the
X	  beginning of the transfer to prune the file to the correct
X	  length; this may cause problems with source files that grow
X	  during the course of the transfer.  This problem does	not
X
X
X
X     Page 8					     (printed 3/19/96)
X
X
X
X
X
X
X     SSSSZZZZ((((1111))))		OOOOmmmmeeeennnn TTTTeeeecccchhhhnnnnoooollllooooggggyyyy	IIIINNNNCCCC ((((OOOOMMMMEEEENNNN))))		 SSSSZZZZ((((1111))))
X
X
X
X	  pertain to ZMODEM transfers, which preserve the exact	file
X	  length unconditionally.
X
X	  Most ZMODEM options are merely passed	to the receiving
X	  program; some	programs do not	implement all of these
X	  options.
X
X	  Circular buffering and a ZMODEM sliding window should	be
X	  used when input is from pipes	instead	of acknowledging
X	  frames each 1024 bytes.  If no files can be opened, sssszzzz sends
X	  a ZMODEM command to echo a suitable complaint; perhaps it
X	  should check for the presence	of at least one	accessible
X	  file before getting hot and bothered.
X
X	  Unix Professional-YAM	provides higher	performance and	other
X	  features not supported by _s_z.	Please contact Omen Technology
X	  Inc for product information.
X
X	  Omen Technology INC
X	  Post Office Box 4681
X	  Portland OR 97208
X	  503-614-0430 (Sales)
X	  900-555-RTFM (Non-Customer Technical Support)
X
X
X     BBBBUUUUGGGGSSSS
X	  On at	least one BSD system, sz would abend it	got within a
X	  few kilobytes	of the end of file.
X	  Using	the "-w8192" option fixed the problem.	The real cause
X	  is unknown, perhaps a	bug in the kernel TTY output routines.
X
X	  The test mode	leaves a zero length file on the receiving
X	  system.
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X
X     Page 9					     (printed 3/19/96)
X
X
X
SHAR_EOF
chmod 0664 sz.doc ||
echo 'restore of sz.doc failed'
Wc_c="`wc -c < 'sz.doc'`"
test 24942 -eq "$Wc_c" ||
	echo 'sz.doc: original size 24942, current size' "$Wc_c"
fi
# ============= gz ==============
if test -f 'gz' -a X"$1" != X"-c"; then
	echo 'x - skipping gz (File already exists)'
else
echo 'x - extracting gz (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'gz' &&
exec zcommand "sz $*"
SHAR_EOF
chmod 0644 gz ||
echo 'restore of gz failed'
Wc_c="`wc -c < 'gz'`"
test 22 -eq "$Wc_c" ||
	echo 'gz: original size 22, current size' "$Wc_c"
fi
# ============= zupl.t ==============
if test -f 'zupl.t' -a X"$1" != X"-c"; then
	echo 'x - skipping zupl.t (File already exists)'
else
echo 'x - extracting zupl.t (Text)'
sed 's/^X//' << 'SHAR_EOF' > 'zupl.t' &&
X	echo "ProYAM/ZCOMM script to upload minirb and rz/sz to *nix"
X	if S>1200 pt1
X	ena -t
X	if !fminirb.c echo "Can't find minirb.c !!";  abort
X	putw "stty -echo; cat >minirb.c\r"
X	f -xHr minirb.c
X	putw "\r\4"
X	putw "stty echo\r"
X	dis -h
X	pat 1 "rwx"
X	pat 2 "%"
X	put "cc minirb.c -o minirb; ls -l minirb\r"
X	wait -f120
X	if 1 goto okok
X	echo "The compiiation appears to have failed."
X	echo "Please compile minirb.c to minirb, then"
X	echo "hit F5 to upload the rest of the rz/sz files."
X	set f5
@putw minirb\r; sb README zmodem.h zm.c zmr.c sz.c rz.c crctab.c rbsb.c *.doc gz
X	t
X	return
okok:	echo "Minirb Compilation Appears Successful."
X	put minirb\r
X	sb README ?akefile zmodem.h zm.c zmr.c sz.c rz.c crc.c crctab.c rbsb.c *.doc gz
X	t
X	return
SHAR_EOF
chmod 0644 zupl.t ||
echo 'restore of zupl.t failed'
Wc_c="`wc -c < 'zupl.t'`"
test 738 -eq "$Wc_c" ||
	echo 'zupl.t: original size 738, current size' "$Wc_c"
fi
exit 0
