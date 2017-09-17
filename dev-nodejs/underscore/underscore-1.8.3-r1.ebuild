# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_EXTRA_FILES="${PN}-min.js ${PN}-min.map"

inherit node-module

DESCRIPTION="JavaScript's functional programming helper library"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DEPEND="dev-util/uglifyjs
	doc? ( app-doc/docco )"

DOCS=( README.md )

src_compile() {
	uglifyjs ${PN}.js -c "evaluate=false" --comments "/    .*/" -m --source-map ${PN}-min.map -o ${PN}-min.js || die
	if use doc; then
		docco ${PN}.js || die
	fi
}

src_install() {
	node-module_src_install
	if use doc; then
		docinto html
		dodoc -r docs/*
	fi
}
