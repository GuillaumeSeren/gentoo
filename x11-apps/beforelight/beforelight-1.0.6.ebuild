# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit xorg-3

DESCRIPTION="Sample implementation of screen saver"
KEYWORDS="amd64 arm ~arm64 ~mips ~ppc ppc64 ~s390 ~sparc x86"

RDEPEND="
	x11-libs/libX11
	x11-libs/libXScrnSaver
	x11-libs/libXt
	x11-libs/libXaw"
DEPEND="${RDEPEND}
	x11-base/xorg-proto"
