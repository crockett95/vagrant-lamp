class lamp {
	/*
	 *	Start Apache config
	 */
	class { 'apache' :
		mpm_module	=>	'prefork',
	}

	# Apache Mods
	class { 'apache::mod::php' : }
	class { 'apache::mod::rewrite' : }


	/*
	 *	Start PHP Config
	 */
	class { 'php' :
		service =>	'httpd',
	}

	# PHP Modules
	php::module { 'mcrypt' : }
	php::module { 'gd' : }
	php::module { 'mysql' : }


	/*
	 *	Start MySQL Config
	 */
	class { 'mysql::server' :
		root_password 	=>	'root',
	}
}
