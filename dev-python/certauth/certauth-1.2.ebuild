# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy pypy3 )
inherit distutils-r1 git-r3

DESCRIPTION="Simple CertificateAuthority and host certificate creation"
HOMEPAGE="https://github.com/ikreymer/certauth https://pypi.org/project/certauth/"
EGIT_REPO_URI="https://github.com/ikreymer/certauth.git"
EGIT_COMMIT="44db4a557e7bed0bf006c9a59b3c53d8a20fb670"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/pyopenssl[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )