# Makefile generated by imake - do not edit!
# $XConsortium: imake.c,v 1.89 94/08/12 00:45:51 gildea Exp $

# -----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $XConsortium: Imake.tmpl,v 1.220 94/08/30 17:25:36 matt Exp $
#

.SUFFIXES: .i

# $XConsortium: Imake.cf,v 1.12 94/03/29 15:42:08 gildea Exp $

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.sample,v 1.9 94/04/08 17:02:06 rws Exp $

# -----------------------------------------------------------------------
# platform-specific configuration parameters - edit sun.cf to change

# platform:  $XConsortium: sun.cf,v 1.134 94/08/17 18:56:43 matt Exp $

# operating system:  SunOS 4.1.1

# $XConsortium: sunLib.rules,v 1.14 94/03/28 15:24:43 gildea Exp $

# -----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.sample,v 1.9 94/04/08 17:02:06 rws Exp $

# -----------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files
# rules:  $XConsortium: Imake.rules,v 1.194 94/08/30 17:25:36 matt Exp $

          PATHSEP = /
            SHELL = /bin/sh

              TOP = .
      CURRENT_DIR = .

            IMAKE = imake
           DEPEND = makedepend
        MKDIRHIER = mkdirhier
        CONFIGSRC = $(TOP)/config
         IMAKESRC = $(CONFIGSRC)/imake
        DEPENDSRC = $(CONFIGSRC)/makedepend
           IXXSRC = $(UNSUPPORTEDSRC)/programs/ixx
              IXX = ixx
         IXXFLAGS = -s BaseObject -m TypeObj -r RequestObj -p Xf
      IXXINCLUDES = -i '<X11/Fresco/enter-scope.h>'

          INCROOT = /usr/X11R6/include
        USRLIBDIR = /usr/X11R6/lib
         SHLIBDIR = /usr/X11R6/lib
       LINTLIBDIR = $(USRLIBDIR)/lint
          MANPATH = /usr/X11R6/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)$(MANSUFFIX)
        LIBMANDIR = $(MANSOURCEPATH)$(LIBMANSUFFIX)
       FILEMANDIR = $(MANSOURCEPATH)$(FILEMANSUFFIX)

               AR = ar clq
  BOOTSTRAPCFLAGS =
               CC = gcc -fpcc-struct-return
               AS = as

.SUFFIXES: .cxx

              CXX = g++
    CXXDEBUGFLAGS = -O2
 CXXEXTRA_DEFINES =
CXXEXTRA_INCLUDES =
  CXXIDL_INCLUDES = -I$(TOP)/include
   CXXSTD_DEFINES =
       CXXOPTIONS =
      CXXINCLUDES = $(INCLUDES) $(TOP_INCLUDES) $(CXXEXTRA_INCLUDES) $(CXXIDL_INCLUDES)
       CXXDEFINES = $(CXXINCLUDES) $(CXXSTD_DEFINES) $(THREADS_CXXDEFINES) $(CXXEXTRA_DEFINES)
         CXXFLAGS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(THREADS_CXXFLAGS) $(CXXDEFINES)

         COMPRESS = compress
              CPP = /lib/cpp $(STD_CPP_DEFINES)
    PREPROCESSCMD = gcc -fpcc-struct-return -E $(STD_CPP_DEFINES)
          INSTALL = install
     INSTALLFLAGS = -c
               LD = ld
              LEX = lex
           LEXLIB = -ll
             YACC = yacc
           CCYACC = yacc
             LINT = lint
      LINTLIBFLAG = -C
         LINTOPTS = -axz
               LN = ln -s
             MAKE = make
               MV = mv
               CP = cp

           RANLIB = ranlib
  RANLIBINSTFLAGS =

               RM = rm -f
        MANSUFFIX = n
     LIBMANSUFFIX = 3
    FILEMANSUFFIX = 4
            TROFF = psroff
         MSMACROS = -ms
              TBL = tbl
              EQN = eqn

     STD_INCLUDES =
  STD_CPP_DEFINES =
      STD_DEFINES =
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES =
             TAGS = ctags

    SHAREDCODEDEF = -DSHAREDCODE
         SHLIBDEF = -DSUNSHLIB

     SHLIBLDFLAGS = -assert pure-text

         PICFLAGS = -fpic

      CXXPICFLAGS = -fpic

    PROTO_DEFINES =

     INSTPGMFLAGS =

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4755
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0444
     INSTMANFLAGS = -m 0444
     INSTDATFLAGS = -m 0444
    INSTKMEMFLAGS = -g kmem -m 2755

      PROJECTROOT = /usr/X11R6

     TOP_INCLUDES = -I$(INCROOT)

      CDEBUGFLAGS = -O2
        CCOPTIONS =

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(STD_INCLUDES)
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(EXTRA_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(DEFINES)
           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREADS_CFLAGS) $(ALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB = -L$(USRLIBDIR)
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(CCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)

           LDLIBS = $(LDPOSTLIB) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

           CCLINK = $(CC)

          CXXLINK = $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -X -r
      DEPENDFLAGS =

        MACROFILE = sun.cf
           RM_CMD = $(RM)

    IMAKE_DEFINES =

         IRULESRC = $(CONFIGDIR)
        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES)

     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/Project.tmpl \
			$(IRULESRC)/site.def $(IRULESRC)/$(MACROFILE) \
			 $(EXTRA_ICONFIGFILES)

# -----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $XConsortium: Project.tmpl,v 1.244 94/08/17 18:57:34 matt Exp $

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

           BINDIR = /usr/X11R6/bin
     BUILDINCROOT = $(TOP)
      BUILDINCDIR = $(BUILDINCROOT)/X11
      BUILDINCTOP = ..
      BUILDLIBDIR = $(TOP)/usrlib
      BUILDLIBTOP = ..
           INCDIR = $(INCROOT)/X11
           ADMDIR = /usr/adm
           LIBDIR = $(USRLIBDIR)/X11

          FONTDIR = $(LIBDIR)/fonts
         XINITDIR = $(LIBDIR)/xinit
           XDMDIR = $(LIBDIR)/xdm
           TWMDIR = $(LIBDIR)/twm
           XSMDIR = $(LIBDIR)/xsm
           NLSDIR = $(LIBDIR)/nls
       XLOCALEDIR = $(LIBDIR)/locale
        PEXAPIDIR = $(LIBDIR)/PEX
      XAPPLOADDIR = $(LIBDIR)/app-defaults
       FONTCFLAGS = -t

     INSTAPPFLAGS = $(INSTDATFLAGS)

              RGB = rgb
            FONTC = bdftopcf
        MKFONTDIR = mkfontdir

       DOCUTILSRC = $(TOP)/doc/util
       XDOCMACROS = $(DOCUTILSRC)/macros.t
       XIDXMACROS = $(DOCUTILSRC)/indexmacros.t
       PROGRAMSRC = $(TOP)/programs
           LIBSRC = $(TOP)/lib
          FONTSRC = $(TOP)/fonts
       INCLUDESRC = $(TOP)/X11
        SERVERSRC = $(TOP)/programs/Xserver
       CONTRIBSRC = $(TOP)/../contrib
   UNSUPPORTEDSRC = $(TOP)/unsupported
           DOCSRC = $(TOP)/doc
           RGBSRC = $(TOP)/programs/rgb
      BDFTOPCFSRC = $(PROGRAMSRC)/bdftopcf
     MKFONTDIRSRC = $(PROGRAMSRC)/mkfontdir
    FONTSERVERSRC = $(PROGRAMSRC)/xfs
       FONTINCSRC = $(TOP)/include/fonts
        EXTINCSRC = $(TOP)/include/extensions
     TRANSCOMMSRC = $(LIBSRC)/xtrans
   TRANS_INCLUDES = -I$(TRANSCOMMSRC)

# $XConsortium: sunLib.tmpl,v 1.36 94/04/08 19:13:50 rws Exp $

          XLIBSRC = $(LIBSRC)/X11

SOXLIBREV = 4.20
DEPXONLYLIB =
XONLYLIB =  -lX11

LINTXONLY = $(LINTLIBDIR)/llib-lX11.ln

         XLIBONLY = $(XONLYLIB)

      XEXTLIBSRC = $(LIBSRC)/Xext

SOXEXTREV = 4.20
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

SOXMUREV = 4.20
DEPXMULIB = $(USRLIBDIR)/libXmu.sa.$(SOXMUREV)
XMULIB =  -lXmu

LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln

       OLDXLIBSRC = $(LIBSRC)/oldX

SOOLDXREV = 4.20
DEPOLDXLIB =
OLDXLIB =  -loldX

LINTOLDX = $(LINTLIBDIR)/llib-loldX.ln

       TOOLKITSRC = $(LIBSRC)/Xt

SOXTREV = 4.20
DEPXTOOLONLYLIB = $(USRLIBDIR)/libXt.sa.$(SOXTREV)
XTOOLONLYLIB =  -lXt

LINTXTOOLONLY = $(LINTLIBDIR)/llib-lXt.ln

      DEPXTOOLLIB = $(DEPXTOOLONLYLIB) $(DEPSMLIB) $(DEPICELIB)
         XTOOLLIB = $(XTOOLONLYLIB) $(SMLIB) $(ICELIB)
     LINTXTOOLLIB = $(LINTXTOOLONLYLIB)

       AWIDGETSRC = $(LIBSRC)/Xaw

SOXAWREV = 6.0
DEPXAWLIB = $(USRLIBDIR)/libXaw.sa.$(SOXAWREV)
XAWLIB =  -lXaw

LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln

       XTFSRC = $(TOP)/workInProgress/Xtf

SOXTFREV = 0.7
DEPXTFLIB =
XTFLIB =  -lXtf

LINTXTF = $(LINTLIBDIR)/llib-lXtf.ln

       FRESCOSRC = $(TOP)/workInProgress/Fresco

SOFRESCOREV = 0.7
DEPFRESCOLIB =
FRESCOLIB =  -lFresco

LINTFRESCO = $(LINTLIBDIR)/llib-lFresco.ln

         XILIBSRC = $(LIBSRC)/Xi

SOXINPUTREV = 4.20
DEPXILIB =
XILIB =  -lXi

LINTXI = $(LINTLIBDIR)/llib-lXi.ln

      XTESTLIBSRC = $(LIBSRC)/Xtst

SOXTESTREV = 1.10
DEPXTESTLIB =
XTESTLIB =  -lXtst

LINTXTEST = $(LINTLIBDIR)/llib-lXtst.ln

        PEXLIBSRC = $(LIBSRC)/PEX5

SOPEXREV = 1.10
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

SOICEREV = 6.0
DEPICELIB =
ICELIB =  -lICE

LINTICE = $(LINTLIBDIR)/llib-lICE.ln

            SMSRC = $(LIBSRC)/SM

SOSMREV = 6.0
DEPSMLIB =
SMLIB =  -lSM

LINTSM = $(LINTLIBDIR)/llib-lSM.ln

         FSLIBSRC = $(LIBSRC)/FS

DEPFSLIB = $(USRLIBDIR)/libFS.a
FSLIB =  -lFS

LINTFS = $(LINTLIBDIR)/llib-lFS.ln

         FONTLIBSRC = $(LIBSRC)/font

DEPFONTLIB = $(USRLIBDIR)/libfont.a
FONTLIB =  -lfont

LINTFONT = $(LINTLIBDIR)/llib-lfont.ln

          DEPLIBS = $(DEPXAWLIB) $(DEPXMULIB) $(DEPXTOOLLIB) $(DEPXLIB)

         DEPLIBS1 = $(DEPLIBS)
         DEPLIBS2 = $(DEPLIBS)
         DEPLIBS3 = $(DEPLIBS)

        CONFIGDIR = $(LIBDIR)/config

# -----------------------------------------------------------------------
# start of Imakefile

# -IMPORTANT-------------------------------------------------------

# If you wish to build with Motif, then uncomment the following line:
# #define MOTIF

# If you wish to use an HTML widget instead of an ASCII text widget,
# then uncomment the following line:
# #define HAVE_HTML

# -----------------------------------------------------------------

# INSTRUCTIONS:
# ============
# 1. xmkmf
# 2. make Makefiles
# 3. make all

# NOTE for step 3:
# If you want to build xmotd with HTML support and Athena, use:
# 3. make all EXTRA_DEFINES="-DHAVE_HTML"

# Or, if you want to build xmotd with HTML support and with Motif, use:
# 3. make all EXTRA_DEFINES="-DMOTIF -DHAVE_HTML"

# Another Note: If you are trying to compile with Motif, on a
# Solaris system, fiddle with the LOCAL_LIBRARIES setting (down
# below)

#          CC = purify gcc

             SRCS = main.c xmotd.c changed.c textmode.c usage.c
            INCLS = maindefs.h patchlevel.h appdefs.h main.h
             OBJS = main.o xmotd.o changed.o textmode.o usage.o

      CDEBUGFLAGS = -g
        MANSUFFIX = 8

           SUBDIR = libhtmlw

         MANIFEST = README ACKNOWLEDGEMENTS ChangeLog Imakefile Makefile  \
					XMotd XMotd_motif xmotd.8 xlogo.bm $(SRCS) $(INCLUDES)

# No space after the equals-sign
              VER =1.14b3
             LITE =1.14b3

.PRECIOUS: distrib

  LOCAL_LIBRARIES = $(XAWLIB) $(XMULIB) $(XTOOLLIB) $(XLIB)

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
#

install:: XMotd.ad
	@if [ -d $(DESTDIR)$(XAPPLOADDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(XAPPLOADDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTAPPFLAGS) XMotd.ad $(DESTDIR)$(XAPPLOADDIR)/XMotd

distrib: $(MANIFEST)
	./distrib

lite: $(MANIFEST)
	./distrib lite

# -----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	$(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

emptyrule::

clean::
	$(RM_CMD) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut  "#"*

Makefile::
	-@if [ -f Makefile ]; then set -x; \
	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
	else exit 0; fi
	$(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)

tags::
	$(TAGS) -w *.[ch]
	$(TAGS) -xw *.[ch] > TAGS

# -----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

# -----------------------------------------------------------------------
# dependencies generated by makedepend

