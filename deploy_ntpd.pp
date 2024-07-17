node 'app-vm1.fra1.internal', 'db-vm1.fra1.db', 'web-vm1.fra1.web' {
  package { 'ntp':
    ensure => installed,
  }

  service { 'ntp':
    ensure    => running,
    enable    => true,
    subscribe => Package['ntp'],
  }
}
