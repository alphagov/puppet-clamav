# == Class: clamav:package
#
# install clamav packages
class clamav::package {
  package { ['clamav', 'clamav-freshclam', 'clamav-daemon', 'daemon']:
    ensure  => 'latest',
  }

}
