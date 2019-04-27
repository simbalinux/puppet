class webserver { 
	package { 'httpd':
		ensure => present
	}

	file { '/etc/httpd/conf/httpd.conf': 
		ensure => file,
		source  => 'puppet:///modules/webserver/httpd.conf',
		require => Package['httpd'],
	}
	
	file { '/etc/httpd/conf.d/vhost.conf':
 		ensure => file, 
		content => template("webserver/vhost.conf.erb"),
  		require => Package['httpd'],
	}

	service { 'httpd':
		ensure => running,
		enable => true,
		hasrestart => true,
		require => [ File['/etc/httpd/conf/httpd.conf'], File['/etc/httpd/conf/httpd.conf'] ]
	}

}
