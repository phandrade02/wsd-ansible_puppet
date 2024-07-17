node 'app-vm1.fra1.internal', 'db-vm1.fra1.db', 'web-vm1.fra1.web' {
  package { 'ntp':
    ensure => installed,
  }

  file { '/etc/ntp.conf':
    ensure  => file,
    content => template('ntp/ntp.conf.erb'),
    require => Package['ntp'],
    notify  => Service['ntp'],
  }

  service { 'ntp':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/ntp.conf'],
  }
}
