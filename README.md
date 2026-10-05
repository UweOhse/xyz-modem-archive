This is an archive of the sources of implementations of the X-, Y- and ZMODEM 
protocols, created because i had a hard time finding them after i started to
work on lrzsz again.

Note: i strongly recommend to NOT use any of these packages.

During the lrzsz development in the 90s i fixed a number of security problems
stemming from the original public domain rzsz implementation, and i fixed even
more for lrzsz-0.13. Most of the security issues are still present in the
rzsz and crzsz sources listed below.
The most secure rzsz implementation is the latest lrzsz release:
       https://ohse.de/uwe/software/lrzsz.html (homepage, releases)
       https://github.com/UweOhse/lrzsz (code)
        

zmtx-zmrx-1.02 also contains at least three security issues:
Stephen Hurd, the new maintainer, released a new version, where he fixed them:
       https://github.com/RealDeuce/zmtx-zmrx


If you are interested in the history of rzsz: Rob Swindell created a repository
with one commit per (still retrievable) release from version 1.03 onward. See:
       https://github.com/rswindell/rzsz


**********************************************************************************

# zmtx-zmrx (1994)
a clean, fresh zmodem implementation without any of the stupid features
of the protocol (well, "fresh" it was in 1994).
I took this from one of my backups (yes, virginia, i have backups containing
files i didn't use for 20 years). I have, of course, no idea of where i
downloaded it all those years ago, and i don't know why the timestamps are
from 1996. The should be from 1994. Maybe someone, even me, repackaged it?

[zmtx-zmrx-1.02.tar.gz](zmtx-zmrx-1.02.tar.gz)

# omen technology xyzmodems
Well, the omen website is not reachable anymore, and although the web site
is on archive.org, the same is not true for the omen ftp site.

It's hard to find archives of the omen technology sources on the net, 
although Chuck Forsberg did allow distribution. A number of important 
mirror sites are down (sunsite, inria, ... i miss you, though i remember
calling sunsite often as sinsite).

Those i did find were rarely really clean. Some i downloaded via the web, 
one source file at a time, some were obviously repackaged, and so on.

***note***: do not use this. The code never was secure. Believe me. 
Especially do not, ever, run rz, rb, rx, rc when you do not control the sender.

So, without further ado:

## crzsz-1.13 (2005)
This implements a "server mode". I don't know its purpose, but i do know that
crz.c doesn't even implement a restricted mode and will execute ALL remote
commands.
Source: my backups

[crzsz-1.13.zip](crzsz-1.13.zip) 

## rzsz-3.73 (2003)
Source: my backups

[rzsz-3.73.zip](rzsz-3.73.zip) 

## rzsz-3.48 (1998)
Source: http://web.archive.org/web/20060616002947/http://freeware.sgi.com/source/rzsz/rzsz-3.48.tar.gz

[rzsz-3.48.tar.gz](rzsz-3.48.tar.gz)

## rzsz-3.42 (1994)
Source: https://ftp.gwdg.de/pub/linux/comms/serial_suite/

[rzsz-3.42.tar.gz](rzsz-3.42.tar.gz) 
[rzsz-3.42.sh](rzsz-3.42.sh) 

## rzsz-3.38 (1994)
Source: some less than perfectly trustworthy "usenet"-archive i shall not mention. I included the shar-archive and the tar i repackaged it in.

[rzsz-3.38.tar.gz](rzsz-3.38.tar.gz) 
[rzsz-3.38.sh](rzsz-3.38.sh) 

## rzsz-3.36 (1994)
Source: https://ftp.gwdg.de/pub/linux/comms/serial_suite/

[rzsz-3.36.zip](rzsz-3.36.zip) 

## rzsz-3.34 (1994)
https://www.ibiblio.org/pub/Linux/apps/serialcomm/ft/rzsz-3.34.tar.gz

[rzsz-3.34.zip](rzsz-3.34.zip) 

## rzsz-3.25 (1993)
Source: https://ftp.gwdg.de/pub/linux/comms/serial_suite/

[rzsz-3.25.zip](rzsz-3.25.zip) 

## rzsz-3.17 (1991)
Source: https://groups.google.com/forum/message/raw?msg=comp.unix.aix/0IZD0Iz1L_c/X1qBjvdrid4J

[rzsz-3.17.tar.gz](rzsz-3.25.tar.gz) 
[rzsz-3.17.sh](rzsz-3.25.sh) 

## rzsz-2.03 (1988)
I think this is the last public domain version. If that is true, then this
is the version lrzsz was based on.
Source: [ftp://archives.thebbs.org/file_transfer_protocols/rzsz.zip](archives.thebbs.org)

[rzsz-2.03.zip](rzsz-2.03.zip) 

## rzsz-1987-08-21 (sz 1.35, rz 1.26) (1987)
[rzsz-1.26_35.zip](rzsz-1.26_35.zip) 

Source: [http://cd.textfiles.com/gigabytesw/](some shareware archive)
