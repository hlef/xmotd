# Makefile generated by imake - do not edit!
# $XConsortium: imake.c /main/90 1996/11/13 14:43:23 lehors $

# ----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $XConsortium: Imake.tmpl /main/243 1996/11/13 14:42:56 lehors $
#

all::

.SUFFIXES: .i

# $XConsortium: Imake.cf /main/26 1996/09/28 16:05:09 rws $

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.def /main/revisionist/4 1996/12/31 08:02:07 kaleb $

# ----------------------------------------------------------------------
# platform-specific configuration parameters - edit sun.cf to change

# platform:  $XConsortium: sun.cf /main/160 1996/12/26 08:52:18 kaleb $

# operating system:  SunOS (5.5.0)

# $XConsortium: svr4.cf /main/16 1996/09/28 16:13:41 rws $

# $XConsortium: sv4Lib.rules /main/18 1996/09/28 16:13:29 rws $

# ----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.def /main/revisionist/4 1996/12/31 08:02:07 kaleb $

# ---------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files
# rules:  $XConsortium: Imake.rules /main/217 1996/12/05 09:48:26 kaleb $

          PATHSEP = /
            SHELL = /bin/sh

              TOP = .
      CURRENT_DIR = .

            IMAKE = imake
           DEPEND = makedepend
        MKDIRHIER = mkdirhier
    EXPORTLISTGEN = exportlistgen
        CONFIGSRC = $(TOP)/config
         IMAKESRC = $(CONFIGSRC)/imake
        DEPENDSRC = $(CONFIGSRC)/makedepend

          INCROOT = /usr/X11/include
        USRLIBDIR = /usr/X11/lib
         SHLIBDIR = /usr/X11/lib
       LINTLIBDIR = $(USRLIBDIR)/lint
          MANPATH = /usr/X11/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)1
        LIBMANDIR = $(MANSOURCEPATH)3
       FILEMANDIR = $(MANSOURCEPATH)$(FILEMANSUFFIX)

               AR = /usr/ccs/bin/ar cq
  BOOTSTRAPCFLAGS =
               CC = gcc -fpcc-struct-return
               AS = /usr/ccs/bin/as

         COMPRESS = compress
             GZIP = gzip
              CPP = /usr/ccs/lib/cpp $(STD_CPP_DEFINES)
    PREPROCESSCMD = gcc -fpcc-struct-return -E $(STD_CPP_DEFINES)
          INSTALL = /usr/ucb/install
     INSTALLFLAGS = -c
               LD = /usr/ccs/bin/ld
              LEX = /usr/ccs/bin/lex
           LEXLIB = -ll
             YACC = /usr/ccs/bin/yacc
           CCYACC = /usr/ccs/bin/yacc
             LINT = lint
      LINTLIBFLAG = -o
         LINTOPTS = -bh
               LN = ln -s
             MAKE = /usr/ccs/bin/make
               MV = mv
               CP = cp

               RM = rm -f
        MANSUFFIX = 1x
     LIBMANSUFFIX = 3x
    FILEMANSUFFIX = 4
            TROFF = psroff
            NROFF = nroff
         MSMACROS = -ms
        MANMACROS = -man
              TBL = tbl
              EQN = eqn
             NEQN = neqn
              COL = col

            DVIPS = dvips
            LATEX = latex

     STD_INCLUDES =
  STD_CPP_DEFINES = -Dsun -DSVR4 $(PROJECT_DEFINES)
      STD_DEFINES = -Dsun -DSVR4 $(PROJECT_DEFINES)
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES = -lsocket -lnsl
             TAGS = ctags

    SHAREDCODEDEF =
         SHLIBDEF =

     SHLIBLDFLAGS = -G -z text

         PICFLAGS = -fpic

      CXXPICFLAGS = -K PIC

    PROTO_DEFINES =

     INSTPGMFLAGS =

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4711
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0444
     INSTMANFLAGS = -m 0444
     INSTDATFLAGS = -m 0444
    INSTKMEMFLAGS = -g sys -m 2711

      PROJECTROOT = /usr/X11

      CDEBUGFLAGS = -O2
        CCOPTIONS =

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(STD_INCLUDES)
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(EXTRA_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(DEFINES)
           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREADS_CFLAGS) $(ALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB = -L$(USRLIBDIR)
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(CCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)

           LDLIBS = $(LDPOSTLIBS) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

       CCENVSETUP = LD_RUN_PATH=$(USRLIBDIRPATH)
           CCLINK = $(CCENVSETUP) $(CC)

      CXXENVSETUP = LD_RUN_PATH=$(USRLIBDIRPATH)
          CXXLINK = $(CXXENVSETUP) $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -r
      DEPENDFLAGS =

        MACROFILE = sun.cf
           RM_CMD = $(RM)

    IMAKE_DEFINES =

         IRULESRC = $(CONFIGDIR)
        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES)

     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/X11.tmpl \
			$(IRULESRC)/site.def $(IRULESRC)/$(MACROFILE) \
			 $(EXTRA_ICONFIGFILES)

# $XConsortium: X11.rules /main/2 1996/12/04 10:13:00 swick $

# ----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $XConsortium: X11.tmpl /main/290 1996/12/27 16:14:21 kaleb $

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

             XTOP = $(TOP)
           BINDIR = /usr/X11/bin
     BUILDINCROOT = $(TOP)/exports
      BUILDINCDIR = $(BUILDINCROOT)/include
      BUILDINCTOP = ../..
      BUILDLIBDIR = $(TOP)/exports/lib
      BUILDLIBTOP = ../..
      BUILDBINDIR = $(TOP)/exports/bin
      BUILDBINTOP = ../..
    XBUILDINCROOT = $(XTOP)/exports
     XBUILDINCDIR = $(XBUILDINCROOT)/include/X11
     XBUILDINCTOP = ../../..
     XBUILDBINDIR = $(XBUILDINCROOT)/bin
           INCDIR = $(INCROOT)
           ADMDIR = /usr/adm
           LIBDIR = $(USRLIBDIR)/X11
   TOP_X_INCLUDES =

          FONTDIR = $(LIBDIR)/fonts
         XINITDIR = $(LIBDIR)/xinit
           XDMDIR = $(LIBDIR)/xdm
           TWMDIR = $(LIBDIR)/twm
           XSMDIR = $(LIBDIR)/xsm
           NLSDIR = $(LIBDIR)/nls
       XLOCALEDIR = $(LIBDIR)/locale
        PEXAPIDIR = $(LIBDIR)/PEX
      LBXPROXYDIR = $(LIBDIR)/lbxproxy
  PROXYMANAGERDIR = $(LIBDIR)/proxymngr
        XPRINTDIR = $(LIBDIR)
      XAPPLOADDIR = $(LIBDIR)/app-defaults
       FONTCFLAGS = -t

     INSTAPPFLAGS = $(INSTDATFLAGS)

              RGB = rgb
            FONTC = bdftopcf
        MKFONTDIR = mkfontdir

       DOCUTILSRC = $(XTOP)/doc/util
       XDOCMACROS = $(DOCUTILSRC)/macros.t
       XIDXMACROS = $(DOCUTILSRC)/indexmacros.t
       PROGRAMSRC = $(TOP)/programs
           LIBSRC = $(XTOP)/lib
          FONTSRC = $(XTOP)/fonts
       INCLUDESRC = $(BUILDINCROOT)/include
      XINCLUDESRC = $(INCLUDESRC)/X11
        SERVERSRC = $(XTOP)/programs/Xserver
       CONTRIBSRC = $(XTOP)/../contrib
   UNSUPPORTEDSRC = $(XTOP)/unsupported
           DOCSRC = $(XTOP)/doc
           RGBSRC = $(XTOP)/programs/rgb
      BDFTOPCFSRC = $(PROGRAMSRC)/bdftopcf
     MKFONTDIRSRC = $(PROGRAMSRC)/mkfontdir
    FONTSERVERSRC = $(PROGRAMSRC)/xfs
       FONTINCSRC = $(XTOP)/include/fonts
        EXTINCSRC = $(XTOP)/include/extensions
     TRANSCOMMSRC = $(LIBSRC)/xtrans
   TRANS_INCLUDES = -I$(TRANSCOMMSRC)

       XENVLIBDIR = $(USRLIBDIR)
   CLIENTENVSETUP = LD_LIBRARY_PATH=$(XENVLIBDIR)

# $XConsortium: sunLib.tmpl /main/44 1996/12/09 16:34:30 kaleb $

ICONV_INBUF_DEFINE = -DICONV_INBUF_CONST=const

# $XConsortium: sv4Lib.tmpl /main/23 1996/12/04 10:11:01 swick $

XMULIBONLY = -lXmu

REGEXSYSLIB = -lgen
DYNLIBSYSLIB = -ldl

IAFSYSLIB =

          XLIBSRC = $(LIBSRC)/X11

SOXLIBREV = 6.1
DEPXONLYLIB =
XONLYLIB =  -lX11

LINTXONLY = $(LINTLIBDIR)/llib-lX11.ln

         XLIBONLY = $(XONLYLIB)

      XEXTLIBSRC = $(LIBSRC)/Xext

SOXEXTREV = 6.3
DEPEXTENSIONLIB =
EXTENSIONLIB =  -lXext

LINTEXTENSION = $(LINTLIBDIR)/llib-lXext.ln

LINTEXTENSIONLIB = $(LINTEXTENSION)
          DEPXLIB = $(DEPEXTENSIONLIB) $(DEPXONLYLIB)
             XLIB = $(EXTENSIONLIB) $(XONLYLIB)
         LINTXLIB = $(LINTXONLYLIB)

         XAUTHSRC = $(LIBSRC)/Xau

DEPXAUTHLIB = $(USRLIBDIR)/libXau.a
XAUTHLIB =  -lXau

LINTXAUTH = $(LINTLIBDIR)/llib-lXau.ln

      XDMCPLIBSRC = $(LIBSRC)/Xdmcp

DEPXDMCPLIB = $(USRLIBDIR)/libXdmcp.a
XDMCPLIB =  -lXdmcp

LINTXDMCP = $(LINTLIBDIR)/llib-lXdmcp.ln

           XMUSRC = $(LIBSRC)/Xmu

SOXMUREV = 6.0
DEPXMULIB =
XMULIB =  -lXmu

LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln

       OLDXLIBSRC = $(LIBSRC)/oldX

SOOLDXREV = 6.0
DEPOLDXLIB =
OLDXLIB =  -loldX

LINTOLDX = $(LINTLIBDIR)/llib-loldX.ln

         XPLIBSRC = $(LIBSRC)/Xp

SOXPREV = 6.2
DEPXPLIB =
XPLIB =  -lXp

LINTXP = $(LINTLIBDIR)/llib-lXp.ln

       TOOLKITSRC = $(LIBSRC)/Xt

SOXTREV = 6.0
DEPXTOOLONLYLIB =
XTOOLONLYLIB =  -lXt

LINTXTOOLONLY = $(LINTLIBDIR)/llib-lXt.ln

      DEPXTOOLLIB = $(DEPXTOOLONLYLIB) $(DEPSMLIB) $(DEPICELIB)
         XTOOLLIB = $(XTOOLONLYLIB) $(SMLIB) $(ICELIB)
     LINTXTOOLLIB = $(LINTXTOOLONLYLIB)

       XALIBSRC = $(LIBSRC)/Xa

DEPvarLIB = $(USRLIBDIR)/libXa.a
varLIB =  -lXa

LINTvar = $(LINTLIBDIR)/llib-lXa.ln

       AWIDGETSRC = $(LIBSRC)/Xaw

SOXAWREV = 6.1
DEPXAWLIB =
XAWLIB =  -lXaw

LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln

         XILIBSRC = $(LIBSRC)/Xi

SOXINPUTREV = 6.0
DEPXILIB =
XILIB =  -lXi

LINTXI = $(LINTLIBDIR)/llib-lXi.ln

      XTESTLIBSRC = $(LIBSRC)/Xtst

SOXTESTREV = 6.1
DEPXTESTLIB =
XTESTLIB =  -lXtst

LINTXTEST = $(LINTLIBDIR)/llib-lXtst.ln

        PEXLIBSRC = $(LIBSRC)/PEX5

SOPEXREV = 6.0
DEPPEXLIB =
PEXLIB =  -lPEX5

LINTPEX = $(LINTLIBDIR)/llib-lPEX5.ln

        XIELIBSRC = $(LIBSRC)/XIE

SOXIEREV = 6.0
DEPXIELIB =
XIELIB =  -lXIE

LINTXIE = $(LINTLIBDIR)/llib-lXIE.ln

      PHIGSLIBSRC = $(LIBSRC)/PHIGS

DEPPHIGSLIB = $(USRLIBDIR)/libphigs.a
PHIGSLIB =  -lphigs

LINTPHIGS = $(LINTLIBDIR)/llib-lphigs.ln

DEPXBSDLIB = $(USRLIBDIR)/libXbsd.a
XBSDLIB =  -lXbsd

LINTXBSD = $(LINTLIBDIR)/llib-lXbsd.ln

           ICESRC = $(LIBSRC)/ICE

SOICEREV = 6.3
DEPICELIB =
ICELIB =  -lICE

LINTICE = $(LINTLIBDIR)/llib-lICE.ln

            SMSRC = $(LIBSRC)/SM

SOSMREV = 6.0
DEPSMLIB =
SMLIB =  -lSM

LINTSM = $(LINTLIBDIR)/llib-lSM.ln

           XKEYSRC = $(LIBSRC)/Xkey

SOXKEYREV = 6.0
DEPXKEYLIB =
XKEYLIB =  -lXkey

LINTXKEY = $(LINTLIBDIR)/llib-lXkey.ln

         FSLIBSRC = $(LIBSRC)/FS

DEPFSLIB = $(USRLIBDIR)/libFS.a
FSLIB =  -lFS

LINTFS = $(LINTLIBDIR)/llib-lFS.ln

         FONTLIBSRC = $(LIBSRC)/font

DEPFONTLIB = $(USRLIBDIR)/libfont.a
FONTLIB =  -lfont

LINTFONT = $(LINTLIBDIR)/llib-lfont.ln

    XKBFILELIBSRC = $(LIBSRC)/xkbfile

DEPXKBFILELIB = $(USRLIBDIR)/libxkbfile.a
XKBFILELIB =  -lxkbfile

LINTXKBFILE = $(LINTLIBDIR)/llib-lxkbfile.ln

     XKBCOMPCMD = xkbcomp

          DEPLIBS = $(DEPXAWLIB) $(DEPXMULIB) $(DEPXTOOLLIB) $(DEPXLIB)

         DEPLIBS1 = $(DEPLIBS)
         DEPLIBS2 = $(DEPLIBS)
         DEPLIBS3 = $(DEPLIBS)
         DEPLIBS4 = $(DEPLIBS)
         DEPLIBS5 = $(DEPLIBS)
         DEPLIBS6 = $(DEPLIBS)
         DEPLIBS7 = $(DEPLIBS)
         DEPLIBS8 = $(DEPLIBS)
         DEPLIBS9 = $(DEPLIBS)
         DEPLIBS10 = $(DEPLIBS)

        CONFIGDIR = $(LIBDIR)/config

    USRLIBDIRPATH = $(USRLIBDIR)
        LDPRELIBS = -L$(USRLIBDIR)
       LDPOSTLIBS =
     TOP_INCLUDES = -I$(INCROOT) $(TOP_X_INCLUDES)
  PROJECT_DEFINES =

# ----------------------------------------------------------------------
# start of Imakefile

# BUILD INSTRUCTIONS (ALSO SEE NOTES):
# -------------------
# Step 1. xmkmf -a
# Step 2. make all

# -----
# NOTES
# -----
# If using /usr/openwin/bin/xmkmf, replace step 1 with:
# 1. xmkmf; make makefiles; make includes; make depend
#
# If building with Motif and HTML replace step 2 with:
# 2. make all EXTRA_DEFINES="-DMOTIF -DHAVE_HTML"
#

# CUSTOMIZING INSTRUCTIONS: To customize xmotd, uncomment
# the "#define" statments appropriately.

# If you wish to use an HTML widget instead of an ASCII text widget,
# then uncomment the following line:
# #define HAVE_HTML

# If you wish to use colour xpm pixmaps for the icon and have the
# Xpm library installed, then uncomment the following line:
# #define HAVE_XPM

# If you wish to build with Motif, then uncomment the following line:
# #define MOTIF

# If compiling MOTIF under SOLARIS 2.x (or CDE on other platforms
# (untested)),  uncomment the following line:
# #define SOLARIS2

# Don't touch anything past this point unless you know what you're doing.
# --x--x--x--x--x--x--x--x--x--x--x--x--x--x--x--x--x--x--x--x--x--

#          CC = purify gcc

             SRCS = main.c xmotd.c changed.c textmode.c usage.c browser.c logo.c atom.c
             OBJS = main.o xmotd.o changed.o textmode.o usage.o browser.o logo.o atom.o
            INCLS = maindefs.h appdefs.h main.h

      CDEBUGFLAGS = -g
        MANSUFFIX = 8

         MANIFEST = README GNU ACKNOWLEDGEMENTS Imakefile browser\
					Makefile XMotd XMotd_motif xmotd.8 xlogo.bm xlogo.xpm\
					$(SRCS) $(INCLS)

# No space after the equals-sign
              VER =1.17.3b
             LITE =1.17.3b

.PRECIOUS: distrib

    EXTRA_DEFINES = $(XPM_DEFINE) $(HTML_DEFINE) $(MOTIF_DEFINE)
   MOTD_LIBRARIES = $(XPM_LIB)  $(HTML_LIB_DIR) $(HTML_LIB) $(MOTIF_LIB_DIR) $(MOTIF_LIB)
   EXTRA_INCLUDES = $(HTML_INCLUDE) $(MOTIF_INCLUDE)

# This is what the final link looks like:
# LOCAL_LIBRARIES = -lXm -lXmu -lXt -lXext -lX11 -lsocket -lgen -lucb  -L/usr/ucblib -R/usr/ucblib -R/usr/X11R6/lib

  LOCAL_LIBRARIES = $(MOTD_LIBRARIES) $(XAWLIB) $(XMULIBONLY) $(XTOOLLIB) $(XLIB)
          DEPLIBS = $(HTML_DEP_LIB)

 PROGRAM = xmotd

all:: xmotd

xmotd: $(OBJS) $(DEPLIBS)
	$(RM) $@
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

install:: xmotd
	@if [ -d $(DESTDIR)$(BINDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(BINDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTPGMFLAGS)  xmotd $(DESTDIR)$(BINDIR)/xmotd

install.man:: xmotd.man
	@if [ -d $(DESTDIR)$(MANDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(MANDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTMANFLAGS) xmotd.man $(DESTDIR)$(MANDIR)/xmotd.$(MANSUFFIX)

depend::
	$(DEPEND) $(DEPENDFLAGS) -- $(ALLDEFINES) $(DEPEND_DEFINES) -- $(SRCS)

lint:
	$(LINT) $(LINTFLAGS) $(SRCS) $(LINTLIBS)
lint1:
	$(LINT) $(LINTFLAGS) $(FILE) $(LINTLIBS)

clean::
	$(RM) xmotd

install:: XMotd.ad
	@if [ -d $(DESTDIR)$(XAPPLOADDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(XAPPLOADDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTAPPFLAGS) XMotd.ad $(DESTDIR)$(XAPPLOADDIR)/XMotd

distrib: $(MANIFEST)
	./distrib

lite: $(MANIFEST)
	./distrib lite

# Generate man-page
man: xmotd.8
	rm -f xmotd-man.ps;
	troff -mansun xmotd.8 |dpost >xmotd-mansun.ps

# This target builds the java distribution, Wed Sep 26 19:24:51 2001
java-distrib:
	tar zcvf jmotd-0.55.tar.gz jmotd/README jmotd/logo.gif jmotd/xmotd* jmotd/HistoryItem*

# ----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	 $(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

emptyrule::

clean::
	$(RM) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut  "#"*

Makefile::
	-@if [ -f Makefile ]; then set -x; \
	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
	else exit 0; fi
	$(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)

tags::
	$(TAGS) -w *.[ch]
	$(TAGS) -xw *.[ch] > TAGS

man_keywords::
	catman -M $(DESTDIR)$(MANPATH) -w

# ----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

install.linkkit::
	@echo "install.linkkit in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

# ----------------------------------------------------------------------
# dependencies generated by makedepend

