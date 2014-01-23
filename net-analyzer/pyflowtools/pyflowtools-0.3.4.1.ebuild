# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/flow-tools/flow-tools-0.68.5.1-r1.ebuild,v 1.1 2012/02/21 16:18:46 jer Exp $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="python library for flow-tools"
HOMEPAGE="http://code.google.com/p/pyflowtools/"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="net-analyzer/flow-tools"

DEPEND="${RDEPEND}"

src_install() {
	distutils_src_install
}

pkg_postinst() {
	distutils_pkg_postinst
}
