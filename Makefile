# Makefile generated by imake - do not edit!
# $Xorg: imake.c,v 1.6 2001/02/09 02:03:15 xorgcvs Exp $

# ----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $Xorg: Imake.tmpl,v 1.4 2000/08/17 19:41:46 cpqbld Exp $
#
#
#
#
# $XFree86: xc/config/cf/Imake.tmpl,v 3.116.2.2 2002/09/12 21:04:13 herrb Exp $
# ----------------------------------------------------------------------

all::

.SUFFIXES: .i

# $Xorg: Imake.cf,v 1.4 2000/08/17 19:41:45 cpqbld Exp $

# $XFree86: xc/config/cf/Imake.cf,v 3.74 2001/11/16 16:47:50 dawes Exp $

# Keep cpp from replacing path elements containing i486/i586/i686

#  for compatibility with 3.3.x

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $TOG: site.sample /main/r64_final/1 1998/02/05 16:28:49 kaleb $

# site:  $XFree86: xc/config/cf/site.def,v 3.24 2000/06/25 20:17:29 dawes Exp $

# $XFree86: xc/config/cf/xf86site.def,v 3.179 2002/01/16 18:36:00 dawes Exp $

# ----------------------------------------------------------------------
# platform-specific configuration parameters - edit linux.cf to change

# platform:  $Xorg: linux.cf,v 1.3 2000/08/17 19:41:47 cpqbld Exp $

# platform:  $XFree86: xc/config/cf/linux.cf,v 3.175.2.1 2002/09/04 02:38:08 dawes Exp $

# operating system:  Linux 2.4.21ctx-17 i686 [ELF] (2.4.21)
# libc:	(6.3.2)
# binutils:	(214)

# $Xorg: lnxLib.rules,v 1.3 2000/08/17 19:41:47 cpqbld Exp $
# $XFree86: xc/config/cf/lnxLib.rules,v 3.42 2002/01/16 00:39:59 keithp Exp $

# $XFree86: xc/config/cf/xfree86.cf,v 3.388 2002/01/03 22:51:54 alanh Exp $

# $Xorg: xfree86.cf,v 1.4 2000/08/17 19:41:49 cpqbld Exp $

VENDORMANNAME = XFree86
VENDORMANVERSION = `echo 4 2 1 1 | sed 's/ /./g'`

AFB_DEFS = -DUSE_AFB

DRIVERSDKDIR = $(USRLIBDIR)/Server
DRIVERSDKMODULEDIR = $(USRLIBDIR)/Server/modules
DRIVERSDKINCLUDEDIR = $(USRLIBDIR)/Server/include

       XF86SRC = $(SERVERSRC)/hw/xfree86
    XF86COMSRC = $(XF86SRC)/common
 XF86PARSERSRC = $(XF86SRC)/parser
     XF86OSSRC = $(XF86SRC)/os-support
 XF86DRIVERSRC = $(XF86SRC)/drivers
     DRIVERSRC = $(XF86DRIVERSRC)

        XFREE86DOCDIR = $(DOCDIR)
      XFREE86PSDOCDIR = $(DOCPSDIR)
    XFREE86HTMLDOCDIR = $(DOCHTMLDIR)
XFREE86JAPANESEDOCDIR = $(DOCDIR)/Japanese

# $Xorg: xf86.rules,v 1.3 2000/08/17 19:41:48 cpqbld Exp $

# $XFree86: xc/config/cf/xf86.rules,v 3.34 2001/07/19 02:22:44 tsi Exp $

# ----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $TOG: site.sample /main/r64_final/1 1998/02/05 16:28:49 kaleb $

# site:  $XFree86: xc/config/cf/site.def,v 3.24 2000/06/25 20:17:29 dawes Exp $

# ---------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files
# rules:  $Xorg: Imake.rules,v 1.3 2000/08/17 19:41:46 cpqbld Exp $
#
#
#
#
# rules:  $XFree86: xc/config/cf/Imake.rules,v 3.102 2001/12/17 20:00:37 dawes Exp $

 _NULLCMD_ = @ echo -n

GLIDE2INCDIR = /usr/include/glide

GLIDE3INCDIR = /usr/include/glide3

GLIDE3LIBNAME = glide3

TKLIBNAME = tk8.3

TKLIBDIR = /usr/lib

TCLLIBNAME = tcl8.3

TCLIBDIR = /usr/lib

          PATHSEP = /
            SHELL = /bin/sh -e

              TOP = .
      CURRENT_DIR = .

            IMAKE = imake
           DEPEND = gccmakedep
        MKDIRHIER = mkdir -p
          REVPATH = revpath
    EXPORTLISTGEN =
             RMAN = RmanCmd
      RMANOPTIONS = RmanOptions
        CONFIGSRC = $(TOP)/config
         IMAKESRC = $(CONFIGSRC)/imake
        DEPENDSRC = $(CONFIGSRC)/util

          INCROOT = /usr/X11R6/include
        USRLIBDIR = /usr/X11R6/lib
           VARDIR = /var
        VARLIBDIR = $(VARDIR)/lib
  SYSTEMUSRLIBDIR = /usr/lib
  SYSTEMUSRINCDIR = /usr/include
         SHLIBDIR = /usr/X11R6/lib
       LINTLIBDIR = $(USRLIBDIR)/lint
          MANPATH = /usr/X11R6/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)$(MANSECT)
    SYSCALLMANDIR = $(MANSOURCEPATH)$(SYSCALLMANSECT)
        LIBMANDIR = $(MANSOURCEPATH)$(LIBMANSECT)
     DRIVERMANDIR = $(MANSOURCEPATH)$(DRIVERMANSECT)
       FILEMANDIR = $(MANSOURCEPATH)$(FILEMANSECT)
       GAMEMANDIR = $(MANSOURCEPATH)$(GAMEMANSECT)
       MISCMANDIR = $(MANSOURCEPATH)$(MISCMANSECT)
        ADMMANDIR = $(MANSOURCEPATH)$(ADMMANSECT)
     LOGDIRECTORY = $(VARDIR)/log

        VARRUNDIR = $(VARDIR)/run

         VARDBDIR = $(VARDIR)/lib

               AR = ar clq
  BOOTSTRAPCFLAGS =
               CC = gcc
               AS = as

.SUFFIXES: .cc

              CXX = c++
          CXXFILT = c++filt
           CXXLIB =
    CXXDEBUGFLAGS = -g -O2
CXXDEPENDINCLUDES =
 CXXEXTRA_DEFINES =
CXXEXTRA_INCLUDES =
   CXXSTD_DEFINES = -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L 				-D_POSIX_SOURCE -D_XOPEN_SOURCE 				-D_BSD_SOURCE -D_SVID_SOURCE 				  				 $(CXXPROJECT_DEFINES)
       CXXOPTIONS =
      CXXINCLUDES = $(INCLUDES) $(TOP_INCLUDES) $(CXXEXTRA_INCLUDES)
       CXXDEFINES = $(CXXINCLUDES) $(CXXSTD_DEFINES) $(THREADS_CXXDEFINES) $(DEFINES) $(CXXEXTRA_DEFINES)
         CXXFLAGS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(THREADS_CXXFLAGS) $(CXXDEFINES)

         COMPRESS = compress
          GZIPCMD = gzip
              CPP = /lib/cpp $(STD_CPP_DEFINES)
           RAWCPP = /lib/cpp -undef $(STD_CPP_OPTIONS)
    PREPROCESSCMD = gcc -E $(STD_CPP_DEFINES)
          INSTALL = install
     INSTALLFLAGS = -c
               LD = ld
              LEX = flex -l
               M4 = m4
          M4FLAGS =
           LEXLIB = -lfl
             YACC = bison -y
           CCYACC = bison -y
             LINT = lint
      LINTLIBFLAG = -C
         LINTOPTS = -axz
               LN = ln -s
             MAKE = make
               MV = mv -f
               CP = cp

           RANLIB = ranlib
  RANLIBINSTFLAGS =

               RM = rm -f
             PERL = perl
         PERLOPTS =
          MANSECT = 1
   SYSCALLMANSECT = 2
       LIBMANSECT = 3
    DRIVERMANSECT = 4
      FILEMANSECT = 5
      GAMEMANSECT = 6
      MISCMANSECT = 7
       ADMMANSECT = 8
       MANSRCSECT = s
       MANNEWSECT = n
 PROJECTMANSUFFIX = x
        MANSUFFIX = $(MANSECT)$(PROJECTMANSUFFIX)
 SYSCALLMANSUFFIX = $(SYSCALLMANSECT)$(PROJECTMANSUFFIX)
     LIBMANSUFFIX = $(LIBMANSECT)$(PROJECTMANSUFFIX)
  DRIVERMANSUFFIX = $(DRIVERMANSECT)$(PROJECTMANSUFFIX)
    FILEMANSUFFIX = $(FILEMANSECT)$(PROJECTMANSUFFIX)
    GAMEMANSUFFIX = $(GAMEMANSECT)$(PROJECTMANSUFFIX)
    MISCMANSUFFIX = $(MISCMANSECT)$(PROJECTMANSUFFIX)
     ADMMANSUFFIX = $(ADMMANSECT)$(PROJECTMANSUFFIX)
     MANSRCSUFFIX = man
     MANNEWSUFFIX = _man
          MANDEFS = -D__apploaddir__=$(XAPPLOADDIR) -D__mansuffix__=$(MANSECT)$(PROJECTMANSUFFIX) -D__osmansuffix__=$(MANSECT) -D__syscallmansuffix__=$(SYSCALLMANSECT)$(PROJECTMANSUFFIX) -D__ossyscallmansuffix__=$(SYSCALLMANSECT) -D__libmansuffix__=$(LIBMANSECT)$(PROJECTMANSUFFIX) -D__oslibmansuffix__=$(LIBMANSECT) -D__drivermansuffix__=$(DRIVERMANSECT)$(PROJECTMANSUFFIX) -D__osdrivermansuffix__=$(DRIVERMANSECT) -D__filemansuffix__=$(FILEMANSECT)$(PROJECTMANSUFFIX) -D__osfilemansuffix__=$(FILEMANSECT) -D__gamemansuffix__=$(GAMEMANSECT)$(PROJECTMANSUFFIX) -D__osgamemansuffix__=$(GAMEMANSECT) -D__miscmansuffix__=$(MISCMANSECT)$(PROJECTMANSUFFIX) -D__osmiscmansuffix__=$(MISCMANSECT) -D__admmansuffix__=$(ADMMANSECT)$(PROJECTMANSUFFIX) -D__osadmmansuffix__=$(ADMMANSECT) -D__projectroot__=$(PROJECTROOT) $(XORGMANDEFS) $(VENDORMANDEFS)

   COMPRESSMANCMD = gzip -n

            TROFF = groff -Tps
            NROFF = nroff
         MSMACROS = -ms
        MANMACROS = -man
              TBL = tbl
              EQN = eqn
             NEQN = neqn
              COL = col
         COLFLAGS = -b
            MODCC = gcc
           MODCPP = /lib/cpp
        MODCFLAGS = $(CFLAGS)
            MODAS = as
       MODASFLAGS =
            MODLD = ld
       MODLDFLAGS =
MODLDCOMBINEFLAGS = -r
            MODAR = ar clq
        MODRANLIB = ranlib

            DVIPS = dvips
            LATEX = latex

     STD_INCLUDES =
  STD_CPP_OPTIONS = -traditional
  STD_CPP_DEFINES = -traditional -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L 				-D_POSIX_SOURCE -D_XOPEN_SOURCE 				-D_BSD_SOURCE -D_SVID_SOURCE 				  				 $(PROJECT_DEFINES)
      STD_DEFINES = -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L 				-D_POSIX_SOURCE -D_XOPEN_SOURCE 				-D_BSD_SOURCE -D_SVID_SOURCE 				  				 $(PROJECT_DEFINES)
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES =
             TAGS = ctags

   PARALLELMFLAGS =

    SHAREDCODEDEF =
         SHLIBDEF =

     SHLIBLDFLAGS = -shared

         PICFLAGS = -fPIC

      CXXPICFLAGS = -fPIC

    PROTO_DEFINES = -DFUNCPROTO=15 -DNARROWPROTO

     INSTPGMFLAGS =

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4711
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0444
     INSTMANFLAGS = -m 0444
     INSTDATFLAGS = -m 0444
    INSTKMEMFLAGS = -m 4711

      PROJECTROOT = /usr/X11R6

      CDEBUGFLAGS = -g -O2
        CCOPTIONS =

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(INSTALLED_INCLUDES) $(STD_INCLUDES)
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(MODULE_DEFINES) $(DEFINES) $(EXTRA_DEFINES)
           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREADS_CFLAGS) $(MODULE_CFLAGS) $(ALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB = -L$(USRLIBDIR)
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(CCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)

           LDLIBS = $(LDPOSTLIBS) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

           CCLINK = $(CC)

          CXXLINK = $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -r
      DEPENDFLAGS =
   DEPEND_DEFINES = -DUSE_MAKEDEPEND

# Not sure this belongs here
         TKLIBDIR = /usr/lib
         TKINCDIR = /usr/include
        TKLIBNAME = tk8.3
        TKLIBRARY = -L$(TKLIBDIR) -l$(TKLIBNAME)
        TCLLIBDIR = /usr/lib
        TCLINCDIR = /usr/include
       TCLLIBNAME = tcl8.3
       TCLLIBRARY = -L$(TCLLIBDIR) -l$(TCLLIBNAME)

        MACROFILE = linux.cf
           RM_CMD = $(RM)

    IMAKE_DEFINES =
   IMAKE_WARNINGS =

         IRULESRC = $(CONFIGDIR)
        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES) 		    $(IMAKE_WARNINGS)

     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/X11.tmpl 			$(IRULESRC)/site.def $(IRULESRC)/$(MACROFILE) 			$(IRULESRC)/xfree86.cf $(IRULESRC)/xf86.rules $(IRULESRC)/xf86site.def $(IRULESRC)/host.def $(EXTRA_ICONFIGFILES)

# $Xorg: X11.rules,v 1.4 2000/08/17 19:41:46 cpqbld Exp $

# $XFree86: xc/config/cf/X11.rules,v 1.6 2001/01/17 16:22:31 dawes Exp $

# ----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $Xorg: X11.tmpl,v 1.6 2000/08/17 19:41:46 cpqbld Exp $
#
#
#
#
# $XFree86: xc/config/cf/X11.tmpl,v 1.141.2.1 2002/09/04 02:38:08 dawes Exp $

XORGRELSTRING = Release 6.6
XORGMANNAME = X Version 11

VENDORMANNAME = XFree86
VENDORMANVERSION = `echo 4 2 1 1 | sed 's/ /./g'`

STICKY_DEFINES = -DHAS_STICKY_DIR_BIT

FCHOWN_DEFINES = -DHAS_FCHOWN

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

             XTOP = $(TOP)
           BINDIR = /usr/X11R6/bin
     BUILDINCROOT = $(TOP)/exports
      BUILDINCDIR = $(BUILDINCROOT)/include
      BUILDINCTOP = ../..
      BUILDLIBDIR = $(TOP)/exports/lib
      BUILDLIBTOP = ../..
      BUILDBINDIR = $(TOP)/exports/bin
      BUILDBINTOP = ../..
   BUILDMODULEDIR = $(BUILDLIBDIR)/modules
   BUILDMODULETOP = $(BUILDLIBTOP)/..
    XBUILDINCROOT = $(XTOP)/exports
     XBUILDINCDIR = $(XBUILDINCROOT)/include/X11
     XBUILDINCTOP = ../../..
     XBUILDBINDIR = $(XBUILDINCROOT)/bin
           INCDIR = $(INCROOT)
           ADMDIR = /usr/adm
           LIBDIR = $(USRLIBDIR)/X11
       LIBEXECDIR = /usr/X11R6/libexec
        MODULEDIR = $(USRLIBDIR)/modules
   TOP_X_INCLUDES =

        ETCX11DIR = /etc/X11

          CONFDIR = $(ETCX11DIR)

           DOCDIR = $(LIBDIR)/doc
       DOCHTMLDIR = $(DOCDIR)/html
         DOCPSDIR = $(DOCDIR)/PostScript
          FONTDIR = $(LIBDIR)/fonts
     ENCODINGSDIR = $(FONTDIR)/encodings
         XINITDIR = $(LIBDIR)/xinit
           XDMDIR = $(LIBDIR)/xdm
        XDMVARDIR = $(VARLIBDIR)/xdm
           TWMDIR = $(LIBDIR)/twm
           XSMDIR = $(LIBDIR)/xsm
           NLSDIR = $(LIBDIR)/nls
       XLOCALEDIR = $(LIBDIR)/locale
        PEXAPIDIR = $(LIBDIR)/PEX
      LBXPROXYDIR = $(LIBDIR)/lbxproxy
  PROXYMANAGERDIR = $(LIBDIR)/proxymngr
        XPRINTDIR = $(LIBDIR)/xserver
      XAPPLOADDIR = /etc/X11/app-defaults
       FONTCFLAGS = -t

     INSTAPPFLAGS = $(INSTDATFLAGS)

              RGB = $(BINDIR)/rgb
            FONTC = $(BINDIR)/bdftopcf
        MKFONTDIR = $(BINDIR)/mkfontdir
         XFTCACHE = $(BINDIR)/xftcache
      MKHTMLINDEX = $(BINDIR)/mkhtmlindex
          UCS2ANY = $(BINDIR)/ucs2any.pl
      BDFTRUNCATE = $(BINDIR)/bdftruncate.pl
     UCSMAPPREFIX = $(FONTDIR)/util/map-

     HTMLINDEXCMD = HtmlIndexCmd

       DOCUTILSRC = $(XTOP)/doc/util
        CLIENTSRC = $(TOP)/clients
          DEMOSRC = $(TOP)/demos
       XDOCMACROS = $(DOCUTILSRC)/macros.t
       XIDXMACROS = $(DOCUTILSRC)/indexmacros.t
       PROGRAMSRC = $(TOP)/programs
           LIBSRC = $(XTOP)/lib
          FONTSRC = $(XTOP)/fonts
     ENCODINGSSRC = $(FONTSRC)/encodings
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
      FTSOURCEDIR = $(TOP)/extras/FreeType
     XTTSOURCEDIR = $(TOP)/extras/X-TrueType
       MESASRCDIR = $(TOP)/extras/Mesa
  OGLSAMPLESRCDIR = $(TOP)/extras/ogl-sample
        PSWRAPSRC = $(XTOP)/config/pswrap
     TRANSCOMMSRC = $(LIBSRC)/xtrans
   TRANS_INCLUDES = -I$(TRANSCOMMSRC)
 CONNECTION_FLAGS = -DUNIXCONN -DTCPCONN $(STICKY_DEFINES) $(FCHOWN_DEFINES)

      XORGMANDEFS = -D__xorgversion__='"$(XORGRELSTRING)" "$(XORGMANNAME)"'
    VENDORMANDEFS = -D__vendorversion__="\"Version $(VENDORMANVERSION)\" $(VENDORMANNAME)"

       XENVLIBDIR = $(USRLIBDIR)
   CLIENTENVSETUP = LD_LIBRARY_PATH=$(XENVLIBDIR)

# $Xorg: lnxLib.tmpl,v 1.3 2000/08/17 19:41:47 cpqbld Exp $
# $XFree86: xc/config/cf/lnxLib.tmpl,v 3.14 2001/08/01 00:44:32 tsi Exp $

          XLIBSRC = $(LIBSRC)/X11

SOXLIBREV = 6.2
DEPXONLYLIB =
XONLYLIB =  -lX11

LINTXONLY = $(LINTLIBDIR)/llib-lX11.ln

         XLIBONLY = $(XONLYLIB)

      XEXTLIBSRC = $(LIBSRC)/Xext

SOXEXTREV = 6.4
DEPEXTENSIONLIB =
EXTENSIONLIB =  -lXext

LINTEXTENSION = $(LINTLIBDIR)/llib-lXext.ln

LINTEXTENSIONLIB = $(LINTEXTENSION)
          DEPXLIB = $(DEPEXTENSIONLIB) $(DEPXONLYLIB)
             XLIB = $(EXTENSIONLIB) $(XONLYLIB)
         LINTXLIB = $(LINTXONLYLIB)

    XSSLIBSRC = $(LIBSRC)/Xss

DEPXSSLIB = $(USRLIBDIR)/libXss.a
XSSLIB =  -lXss

LINTXSS = $(LINTLIBDIR)/llib-lXss.ln

    XXF86MISCLIBSRC = $(LIBSRC)/Xxf86misc

DEPXXF86MISCLIB = $(USRLIBDIR)/libXxf86misc.a
XXF86MISCLIB =  -lXxf86misc

LINTXXF86MISC = $(LINTLIBDIR)/llib-lXxf86misc.ln

    XXF86VMLIBSRC = $(LIBSRC)/Xxf86vm

DEPXXF86VMLIB = $(USRLIBDIR)/libXxf86vm.a
XXF86VMLIB =  -lXxf86vm

LINTXXF86VM = $(LINTLIBDIR)/llib-lXxf86vm.ln

    XXF86DGALIBSRC = $(LIBSRC)/Xxf86dga

DEPXXF86DGALIB = $(USRLIBDIR)/libXxf86dga.a
XXF86DGALIB =  -lXxf86dga

LINTXXF86DGA = $(LINTLIBDIR)/llib-lXxf86dga.ln

    XXF86RUSHLIBSRC = $(LIBSRC)/Xxf86rush

DEPXXF86RUSHLIB = $(USRLIBDIR)/libXxf86rush.a
XXF86RUSHLIB =  -lXxf86rush

LINTXXF86RUSH = $(LINTLIBDIR)/llib-lXxf86rush.ln

    XVLIBSRC = $(LIBSRC)/Xv

DEPXVLIB = $(USRLIBDIR)/libXv.a
XVLIB =  -lXv

LINTXV = $(LINTLIBDIR)/llib-lXv.ln

    XVMCLIBSRC = $(LIBSRC)/XvMC

DEPXVMCLIB = $(USRLIBDIR)/libXvMC.a
XVMCLIB =  -lXvMC

LINTXVMC = $(LINTLIBDIR)/llib-lXvMC.ln

    XINERAMALIBSRC = $(LIBSRC)/Xinerama

DEPXINERAMALIB = $(USRLIBDIR)/libXinerama.a
XINERAMALIB =  -lXinerama

LINTXINERAMA = $(LINTLIBDIR)/llib-lXinerama.ln

    DPSLIBSRC = $(LIBSRC)/dps

SODPSREV = 1.0
DEPDPSLIB =
DPSLIB =  -ldps

LINTDPS = $(LINTLIBDIR)/llib-ldps.ln

    DPSTKLIBSRC = $(LIBSRC)/dpstk

SODPSTKREV = 1.0
DEPDPSTKLIB =
DPSTKLIB =  -ldpstk

LINTDPSTK = $(LINTLIBDIR)/llib-ldpstk.ln

    PSRESLIBSRC = $(LIBSRC)/psres

SOPSRESREV = 1.0
DEPPSRESLIB =
PSRESLIB =  -lpsres

LINTPSRES = $(LINTLIBDIR)/llib-lpsres.ln

    GLULIBSRC = $(LIBSRC)/GLU

SOGLUREV = 1.3
DEPGLULIB =
GLULIB =  -lGLU

LINTGLU = $(LINTLIBDIR)/llib-lGLU.ln

    GLXLIBSRC = $(LIBSRC)/GL

SOGLREV = 1.2
DEPGLXLIB =
GLXLIB =  -lGL

LINTGLX = $(LINTLIBDIR)/llib-lGL.ln

    GLWIDGETSRC = $(LIBSRC)/GLw

DEPGLWLIB = $(USRLIBDIR)/libGLw.a
GLWLIB =  -lGLw

LINTGLW = $(LINTLIBDIR)/llib-lGLw.ln

    XRENDERLIBSRC = $(LIBSRC)/Xrender

SOXRENDERREV = 1.1
DEPXRENDERLIB =
XRENDERLIB =  -lXrender

LINTXRENDER = $(LINTLIBDIR)/llib-lXrender.ln

    XRANDRRLIBSRC = $(LIBSRC)/Xrandr

SOXRANDRREV = 1.0
DEPXRANDRLIB =
XRANDRLIB =  -lXrandr

LINTXRANDR = $(LINTLIBDIR)/llib-lXrandr.ln

    XFONTCACHELIBSRC = $(LIBSRC)/Xfontcache

DEPXFONTCACHELIB = $(USRLIBDIR)/libXfontcache.a
XFONTCACHELIB =  -lXfontcache

LINTXFONTCACHE = $(LINTLIBDIR)/llib-lXfontcache.ln

         XAUTHSRC = $(LIBSRC)/Xau

DEPXAUTHLIB = $(USRLIBDIR)/libXau.a
XAUTHLIB =  -lXau

LINTXAUTH = $(LINTLIBDIR)/llib-lXau.ln

      XDMCPLIBSRC = $(LIBSRC)/Xdmcp

DEPXDMCPLIB = $(USRLIBDIR)/libXdmcp.a
XDMCPLIB =  -lXdmcp

LINTXDMCP = $(LINTLIBDIR)/llib-lXdmcp.ln

           XMUSRC = $(LIBSRC)/Xmu

SOXMUREV = 6.2
DEPXMULIB =
XMULIB =  -lXmu

LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln

           XMUUSRC = $(LIBSRC)/Xmuu

SOXMUUREV = 1.0
DEPXMUULIB =
XMUULIB =  -lXmuu

LINTXMUU = $(LINTLIBDIR)/llib-lXmuu.ln

       OLDXLIBSRC = $(LIBSRC)/oldX

DEPOLDXLIB = $(USRLIBDIR)/liboldX.a
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

SOXAREV = 1.0
DEPXALIB =
XALIB =  -lXa

LINTXA = $(LINTLIBDIR)/llib-lXa.ln

       AWIDGETSRC = $(LIBSRC)/Xaw

SOXAWREV = 7.0
DEPXAWLIB =
XAWLIB =  -lXaw

LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln

       AWIDGET6SRC = $(LIBSRC)/Xaw6

SOXAW6REV = 6.1
DEPXAW6LIB =
XAW6LIB =  -lXaw

LINTXAW6 = $(LINTLIBDIR)/llib-lXaw.ln

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

DEPFONTLIB = $(USRLIBDIR)/libXfont.a
FONTLIB = -L$(FREETYPELIBDIR) -L$(FONTLIBSRC)  -lXfont

LINTXFONT = $(LINTLIBDIR)/llib-lXfont.ln
#
DEPXFONTLIB = $(USRLIBDIR)/libXfont.a
XFONTLIB =  -lXfont

LINTXFONT = $(LINTLIBDIR)/llib-lXfont.ln

     FONTSTUBLIBSRC = $(FONTLIBSRC)/stubs

DEPFONTSTUBLIB = $(USRLIBDIR)/libfntstubs.a
FONTSTUBLIB =  -lfntstubs

LINTFONTSTUB = $(LINTLIBDIR)/llib-lfntstubs.ln
         DEPFONTLIB = $(DEPXFONTLIB) $(DEPFONTSTUBLIB)
            FONTLIB = $(XFONTLIB) $(FONTSTUBLIB)

         FONTENCLIBSRC = $(LIBSRC)/fontenc

DEPXFONTENCLIB = $(USRLIBDIR)/libfontenc.a
XFONTENCLIB =  -lfontenc

LINTXFONTENC = $(LINTLIBDIR)/llib-lfontenc.ln

          XPMLIBSRC = $(LIBSRC)/Xpm

SOXPMREV = 4.11
DEPXPMLIB =
XPMLIB =  -lXpm

LINTXPM = $(LINTLIBDIR)/llib-lXpm.ln

          FREETYPE2LIBSRC = $(LIBSRC)/freetype2

SOFREETYPE2REV = 6.2
DEPFREETYPE2LIB =
FREETYPE2LIB =  -lfreetype

LINTFREETYPE2 = $(LINTLIBDIR)/llib-lfreetype.ln

FREETYPE2DIR = /usr
FREETYPE2LIBDIR = /usr/lib
FREETYPE2INCDIR = /usr/include/freetype2
FREETYPE2INCLUDES = -I$(FREETYPE2INCDIR)
FREETYPE2LIB = -L$(FREETYPE2LIBDIR) -lfreetype
FREETYPE2DEFINES = -DFREETYPE2

          XFTLIBSRC = $(LIBSRC)/Xft

SOXFTREV = 1.1
DEPXFTLIB =
XFTLIB =  -lXft

LINTXFT = $(LINTLIBDIR)/llib-lXft.ln

    XKBFILELIBSRC = $(LIBSRC)/xkbfile

DEPXKBFILELIB = $(USRLIBDIR)/libxkbfile.a
XKBFILELIB =  -lxkbfile

LINTXKBFILE = $(LINTLIBDIR)/llib-lxkbfile.ln

     XKBCOMPCMD = $(BINDIR)/xkbcomp

    XKBUILIBSRC = $(LIBSRC)/xkbui

DEPXKBUILIB = $(USRLIBDIR)/libxkbui.a
XKBUILIB =  -lxkbui

LINTXKBUI = $(LINTLIBDIR)/llib-lxkbui.ln

        XTRAPLIBSRC = $(LIBSRC)/XTrap

SOXTRAPREV = 6.4
DEPXTRAPLIB =
XTRAPLIB =  -lXTrap

LINTXTRAP = $(LINTLIBDIR)/llib-lXTrap.ln

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

XMULIBONLY = -lXmu
XMULIB = $(XMULIBONLY) $(XTOOLLIB) $(XLIB)

        CONFIGDIR = $(LIBDIR)/config

    USRLIBDIRPATH = $(USRLIBDIR)
        LDPRELIBS = -L$(USRLIBDIR)
       LDPOSTLIBS =
     TOP_INCLUDES = -I$(INCROOT) $(TOP_X_INCLUDES)
  PROJECT_DEFINES =

CXXPROJECT_DEFINES =

# ----------------------------------------------------------------------
# start of Imakefile

SRCS = xtoolwait.c
OBJS = xtoolwait.o

SYS_LIBRARIES = $(XLIB)

        PROGRAM = xtoolwait

all:: xtoolwait

xtoolwait: $(OBJS) $(DEPLIBS)
	$(RM) $@
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

install:: xtoolwait
	@if [ -d $(DESTDIR)$(BINDIR) ]; then \
		set +x; \
	else \
		if [ -h $(DESTDIR)$(BINDIR) ]; then \
			(set -x; rm -f $(DESTDIR)$(BINDIR)); \
		fi; \
		(set -x; $(MKDIRHIER) $(DESTDIR)$(BINDIR)); \
	fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTPGMFLAGS)  xtoolwait $(DESTDIR)$(BINDIR)/xtoolwait

all:: xtoolwait.$(MANNEWSUFFIX)

xtoolwait.$(MANNEWSUFFIX): xtoolwait.$(MANSRCSUFFIX)
	$(RM) $@
	cd `dirname xtoolwait` && \
		$(LN) `basename xtoolwait.$(MANSRCSUFFIX)` `basename $@`

cleandir::
	$(RM) xtoolwait.$(MANNEWSUFFIX)

install.man:: xtoolwait.$(MANNEWSUFFIX)
	@if [ -d $(DESTDIR)$(MANDIR) ]; then \
		set +x; \
	else \
		if [ -h $(DESTDIR)$(MANDIR) ]; then \
			(set -x; rm -f $(DESTDIR)$(MANDIR)); \
		fi; \
		(set -x; $(MKDIRHIER) $(DESTDIR)$(MANDIR)); \
	fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTMANFLAGS) xtoolwait.$(MANNEWSUFFIX) $(DESTDIR)$(MANDIR)/xtoolwait.$(MANSUFFIX)

depend::
	$(DEPEND) $(DEPENDFLAGS) -- $(ALLDEFINES) $(DEPEND_DEFINES) -- $(SRCS)

lint:
	$(LINT) $(LINTFLAGS) $(SRCS) $(LINTLIBS)
lint1:
	$(LINT) $(LINTFLAGS) $(FILE) $(LINTLIBS)

cleandir::
	$(RM) xtoolwait

# ----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	 	$(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

.SUFFIXES: .s

.c.s:
	$(RM) $@
	 	$(CC) -S $(CFLAGS) $(_NOOP_) $*.c

emptyrule::

cleandir::
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

html_index::

clean:: cleandir

distclean:: cleandir

# ----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

install.sdk::
	@echo "install.sdk in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

distclean::
	$(RM) Makefile

# ----------------------------------------------------------------------
# dependencies generated by makedepend

# DO NOT DELETE
xtoolwait.o: xtoolwait.c \
  /usr/lib/gcc-lib/i386-linux/3.3.1/include/stdio.h \
  /usr/include/features.h /usr/include/sys/cdefs.h \
  /usr/include/gnu/stubs.h \
  /usr/lib/gcc-lib/i386-linux/3.3.1/include/stddef.h \
  /usr/include/bits/types.h /usr/include/bits/wordsize.h \
  /usr/include/bits/typesizes.h /usr/include/libio.h \
  /usr/include/_G_config.h /usr/include/wchar.h /usr/include/bits/wchar.h \
  /usr/include/gconv.h /usr/lib/gcc-lib/i386-linux/3.3.1/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/getopt.h /usr/include/stdlib.h \
  /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
  /usr/include/endian.h /usr/include/bits/endian.h \
  /usr/include/sys/types.h /usr/include/time.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/alloca.h /usr/include/signal.h /usr/include/bits/signum.h \
  /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h \
  /usr/include/bits/sigcontext.h /usr/include/asm/sigcontext.h \
  /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h \
  /usr/include/unistd.h /usr/include/bits/posix_opt.h \
  /usr/include/bits/confname.h /usr/include/fcntl.h \
  /usr/include/bits/fcntl.h /usr/include/sys/stat.h \
  /usr/include/bits/stat.h /usr/include/string.h /usr/include/errno.h \
  /usr/include/bits/errno.h /usr/include/linux/errno.h \
  /usr/include/asm/errno.h /usr/include/sys/time.h \
  /usr/include/sys/wait.h /usr/include/sys/resource.h \
  /usr/include/bits/resource.h /usr/X11R6/include/X11/Xlib.h \
  /usr/X11R6/include/X11/X.h /usr/X11R6/include/X11/Xfuncproto.h \
  /usr/X11R6/include/X11/Xosdefs.h /usr/X11R6/include/X11/Xatom.h \
  /usr/X11R6/include/X11/Xutil.h /usr/X11R6/include/X11/Xmd.h
