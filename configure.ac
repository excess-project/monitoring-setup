AC_INIT([monitoring], [1.0], [hoppe@hlrs.de])
AM_INIT_AUTOMAKE

dnl
dnl Checking for C compiler
dnl
AC_PROG_CC

dnl
dnl Checking for 'wget'
dnl
AC_CHECK_PROG([wget],[wget],[yes],[no])
AM_CONDITIONAL([FOUND_WGET], [test "x$wget" = xyes])
AM_COND_IF([FOUND_WGET],,[AC_MSG_ERROR([required program 'wget' not found.])])

dnl
dnl Downloading, compiling, and installing external libraries
dnl

ROOT=`pwd`
BINARY_FOLDER=bin
INSTALL_PATH_PAPI=`pwd`/${BINARY_FOLDER}/papi

AC_CONFIG_SUBDIRS([papi-5.4.0/src])

dnl
dnl (1) papi
dnl
PAPI=papi
PAPI_VERSION=5.4.0
if test ! -e ${BINARY_FOLDER}/${PAPI}/lib/libpapi.so.${PAPI_VERSION}.0; then
	cd ${ROOT}
	wget http://icl.cs.utk.edu/projects/papi/downloads/${PAPI}-${PAPI_VERSION}.tar.gz
	tar zxvf ${PAPI}-${PAPI_VERSION}.tar.gz
	#cd ${PAPI}-${PAPI_VERSION}/src
	#echo `pwd`
	#./configure --prefix=${INSTALL_PATH_PAPI} --with-components="rapl coretemp infiniband"
	#make
	#make install all
fi

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
