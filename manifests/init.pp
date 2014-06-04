# Public: Install Macvim.
# On Mac OS X, MacVim can't build without a full Xcode install.
#
# Examples
#
#   include macvim
class macvim {
  case $::osfamily {
    'Darwin': {
      package { 'macvim':
        ensure          => latest,
        install_options => [
          '--with-cscope',
          '--override-system-vim',
          '--with-ruby',
          ];
      }
    }

    default: {}
  }
}
