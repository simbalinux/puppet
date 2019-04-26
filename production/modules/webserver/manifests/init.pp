class webserver {
  if $::osfamily == 'RedHat' {
    package { 'httpd' :
      ensure => present
    }
  } elsif $::osfamily == 'Debian' {
    package { 'apache2' :
      ensure => present
    }
  } else {
      fail "This is not a supported distro."
  }
}
