## Bloccit: a Reddit replica

* Ruby version
2.2.1p85

* System dependencies
Issues with `pg`

Installing pg 0.18.3 with native extensions

Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    /Users/dinesh/.rvm/rubies/ruby-2.2.1/bin/ruby -r ./siteconf20151102-4388-pbqdaw.rb extconf.rb
checking for pg_config... no
No pg_config... trying anyway. If building fails, please try again with
 --with-pg-config=/path/to/pg_config
checking for libpq-fe.h... no
Can't find the 'libpq-fe.h header
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of necessary
libraries and/or headers.  Check the mkmf.log file for more details. 


````
$ brew install libpqxx
````
````
Warning: You are using OS X 10.11.
We do not provide support for this pre-release version.
You may encounter build failures or other breakage.
==> Installing dependencies for libpqxx: postgresql
==> Installing libpqxx dependency: postgresql
==> Downloading https://homebrew.bintray.com/bottles/postgresql-9.4.4.el_capitan
######################################################################## 100.0%
==> Pouring postgresql-9.4.4.el_capitan.bottle.tar.gz
==> /usr/local/Cellar/postgresql/9.4.4/bin/initdb /usr/local/var/postgres
````
Reference - http://stackoverflow.com/questions/9668753/rails-3-cant-install-pg-gem&#13

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
