# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

USE_RUBY="ruby31 ruby32 ruby33 ruby34"
RUBY_FAKEGEM_RECIPE_TEST="rspec3"

inherit ruby-fakegem

DESCRIPTION="Potentially the best command line gister"
HOMEPAGE="https://github.com/defunkt/gist"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

# dev-python/txgithub also installs a 'gist' binary.
RDEPEND="!dev-python/txgithub"

ruby_add_bdepend "test? ( dev-ruby/webmock )"
