#!/bin/make
#
# dbmdump - dump the data from a dbm file
#
# @(#) $Revision: 1.3 $
# @(#) $Id: Makefile,v 1.3 1999/09/27 05:36:31 chongo Exp chongo $
# @(#) $Source: /usr/local/src/cmd/dbm/RCS/Makefile,v $
#
# Copyright (c) 1998 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
# USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# chongo <was here> /\oo/\
#
# Share and enjoy!

SHELL = /bin/sh
I = /usr/include
DEST = /usr/local/bin
RM = /bin/rm -f
CP = /bin/cp
CHMOD = /bin/chmod

TARGETS = dbmdump dbdump

dbdump: dbmdump
	${RM} $@
	${CP} $? $@
	${CHMOD} +x $@

all: ${TARGETS}

install: all
	@for i in ${TARGETS}; do \
	    echo "${RM} ${DEST}/$$i"; \
	    ${RM} ${DEST}/$$i; \
	    echo "${CP} $$i ${DEST}"; \
	    ${CP} $$i ${DEST}; \
	    echo "${CHMOD} 0555 ${DEST}/$$i"; \
	    ${CHMOD} 0555 ${DEST}/$$i; \
	done

clean:

clobber: clean
	${RM} -f dbdump
