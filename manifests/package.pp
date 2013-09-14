# == Class: clamav:package
#
# install clamav packages
class clamav::package {
  package { ['clamav', 'clamav-freshclam', 'clamav-daemon']:
    ensure  => 'latest',
  }

}
