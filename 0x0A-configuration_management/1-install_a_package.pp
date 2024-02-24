# install flask using puppet from pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask',
  path        => ['/usr/bin'],
  refreshonly => true,
}


