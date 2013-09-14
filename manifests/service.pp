# == Class: clamav::service
#
# ensure the clamav serivces are running
class clamav::service {

  service { ['clamav-freshclam', 'clamav-daemon']:
    ensure  => running,
  }

}
