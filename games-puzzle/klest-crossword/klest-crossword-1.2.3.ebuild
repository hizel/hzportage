EAPI=2
inherit eutils qt4-r2 games

DESCRIPTION="game for professional compiling, editing and easy guessing american and classic the crossword puzzles"
HOMEPAGE="http://sourceforge.net/projects/klest-crossword/"
SRC_URI="mirror://sourceforge/${PN}/${P}-src.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-qt/qtcore:4
        dev-qt/qtgui:4
		dev-qt/qtsql:4
		dev-qt/qtwebkit:4"

S=${WORKDIR}/${P}-src

src_configure() {
	eqmake4
}

src_install() {
	dogamesbin usr/games/${P}
	insinto /usr/share/${P}
	doins -r usr/share/${P}/*
	insinto /usr/share/doc/${P}
	doins -r usr/share/doc/${P}/*
	domenu usr/share/application/${P}.desktop
}
