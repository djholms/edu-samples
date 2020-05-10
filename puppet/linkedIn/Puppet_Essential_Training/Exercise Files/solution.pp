#Solution 1: Defaults

class nice_clean_defaults {
  user { 
    default: 
      ensure            => present,
      managehome => true;
    'bob':  home      => '/var/www/bob_wide_web';
    'alice': home      => '/var/www/alice';
    'carol': home      => '/var/www/unicorn_central';
  }
  file {
    default: ensure => file,
    '/var/www/bob_wide_web/index.html':
      source => 'puppet:///big_ugly_mess/bob_wide_web/index.html';
    '/var/www/unicorn_central/index.html':
      source => 'puppet:///big_ugly_mess/unicorn_central/index.html';
    '/var/www/alice/index.html':
      source => 'puppet:///big_ugly_mess/alice/index.html';
  }
}

#Solution 2: Each

class nice_clean_iterator {
  $web_devs = [
    {'username' => 'bob', 'site_name' => 'bob_wide_web'},
    {'username' => 'alice', 'site_name' => 'alice'},
    {'username' => 'carol', 'site_name' => 'unicorn_central'}
  ]

  $web_devs.each | $web_dev |
    user { $web_dev['name']:
      ensure => present,
      managehome => true,
      home => "/var/www/${web_dev['site_name']}",
    }
   file { "/var/www/${web_Dev['site_name']}/index.html":
      ensure => file,
      source => "puppet:///nice_clean_iterator/${web_dev['site_name']}/index.html",
   }
}

#Solution 3: Define

#  **site.pp**
class nice_clean_type {
  $web_devs = [
    {'username' => 'bob', 'site_name' => 'bob_wide_web'},
    {'username' => 'alice', 'site_name' => 'alice'},
    {'username' => 'carol', 'site_name' => 'unicorn_central'}
  ]
  nice_clean_type::web_user { $web_devs:
    ensure => present,
  }
}

#  **web_user.pp**
define nice_clean_type::web_user (
    $developer
) {
  user { $developer['name']:
      ensure => present,
      managehome => true,
      home => "/var/www/${developer['site_name']}",
    }
  file { "/var/www/${developer['site_name']}/index.html":
      ensure => file,
      source => "puppet:///nice_clean_type/${developer['site_name']}/index.html",
   }
}
