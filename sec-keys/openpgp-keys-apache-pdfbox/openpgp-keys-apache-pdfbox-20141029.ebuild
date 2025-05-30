# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="OpenPGP keys used by pdfbox.apache.org"
HOMEPAGE="https://pdfbox.apache.org/download.html"
SRC_URI="https://downloads.apache.org/pdfbox/KEYS -> ${P}-KEYS.asc"
S="${WORKDIR}"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="amd64 arm64 ppc64"

src_install() {
	local files=( ${A} )
	insinto /usr/share/openpgp-keys
	newins - pdfbox.apache.org.asc < <(cat "${files[@]/#/${DISTDIR}/}" || die)
}
