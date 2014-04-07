include lamp

# Vhost
apache::vhost { 'app.192.168.33.10.xip.io' :
	port	=>	'80',
	docroot	=>	'/vagrant/app',
	serveraliases	=>	'*.app.192.168.33.10.xip.io',
	directories 	=> 	[
		{
			path	=>	'/vagrant', 
        	options => 	[ 'FollowSymLinks', 'MultiViews' ], 
		},
	],
}

# New Database
mysql::db { 'app' :
	user 		=> 	'app',
	password 	=> 	'password',
	host 		=> 	'localhost',
	grant 		=> 	['ALL'],
}
