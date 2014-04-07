# Vagrant LAMP Stack

Get a full LAMP (Linux, Apache, MySQL, PHP) stack up and running in no time. This stack is ready to drop into any project that you have, or even use as a submodule so that you don't have to worry about maintaining someone else's code.

Requires:

- [Vagrant](http://vagrantup.com) >= 1.3.5
- [VirtualBox](http://virtualbox.org) >= 4.2.0 _or another VM provider_

This should only be used _locally_ for development. The stack has not been optimized or secured for production use.

## Usage

### Simple

1. Clone the git repository, and initialize the submodules:  
   ```
   # git clone https://github.com/crockett95/vagrant-lamp.git

   # cd vagrant-lamp
   
   # git submodule update --init --recursive
   ```
2. Create the `app/` directory and add your stuff
3. Start vagrant with `vagrant up`
  - MySQL root username and password are both `root`
  - Your app will be available locally at [`http://app.192.168.33.10.xip.io`](http://app.192.168.33.10.xip.io).
  - A MySQL database named `app` will be available on [`localhost`](http://localhost) with username `app` and password `password`.

### As a Submodule

_Coming Soon_

## Testing

_Coming Soon_

<!---
### Unit Tests

1. `rake spec`

### Integration Tests

1. _Run other local services / provide credentials for external services._
2. `rake spec:integration`
--->
## Deploying

### _How to setup the deployment environment_

- _Required heroku addons, packages, or chef recipes._
- _Required environment variables or credentials not included in git._
- _Monitoring services and logging._

## Changes

### Issues

Please use the Github issue tracker to report any bugs or issues.

### Pull Requests

Pull requests are welcome.

### Roadmap

Planned changes include:

- Automated testing for the configuration
- Simpler and more complete configuration support in Puppet
  - `lamp::app` to create Apache Vhost and MySQL database
- Automated import and export of SQL dumps for VCS
- Add [Adminer](http://www.adminer.org/) for database management
- Add [Xdebug](http://xdebug.org/index.php)

## License

**Copyright (C) 2014 Steve Crockett**  
This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
