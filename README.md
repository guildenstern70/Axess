# Axess

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

Axess is an online paste service.

It is an application written in Ruby (3.0.x) on Rails (6.1.x).
It uses SQLite as database and Bootstrap as Rensponsive UI library.

### Docker

Build docker image

    docker build -f Dockerfile -t guildenstern70/axess:1.0 .
    docker run -p 8080:8080 guildenstern70/axess:1.0

### Prepare for production

    rails assets:precompile

and then
    
    ruby rails server -e production

### Initialize DB

Only if the database does not exits:

    rake db:create

Normally:

    rake db:migrate

Load initial data:

    rake db:seed

Rollback db

    rake db:rollback
    
