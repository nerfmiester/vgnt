class { 'apt':
}
package { 'nodejs':
}->
package { 'lynx-cur':
}->
apt::ppa { 'ppa:brightbox/ruby-ng':
  notify => Exec['apt_update'],
} ->
package { 'ruby2.1':
  require => [
    Exec['apt_update'],
    Apt::Ppa['ppa:brightbox/ruby-ng']
  ]
}->
package { 'ruby2.1-dev':
  require => [
    Apt::Ppa['ppa:brightbox/ruby-ng']
  ]
}->
package { 'ruby-switch' :
  ensure => present
}->
exec {'ruby-switch --set ruby2.1' :
  command => '/usr/bin/ruby-switch --set ruby2.1'
}->
package { 'jekyll' :
  ensure      => "latest",
  provider    => "gem",
}