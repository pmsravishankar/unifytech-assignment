# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## App Setup Steps

```ruby
rails new github_events --api --database=sqlite3
rails g model Repo name:string url:string
rails g model Actor login:string url:string
rails g model Event event_type:string public:boolean repo:references actor:references
rails db:setup
rails db:migrate
rails db:seed
rails g controller Events
rails g controller Repos
```

## Software Installation
### Install PostgreSQL
```sh
sudo apt-get update && sudo apt-get install -y lsb-release && sudo apt-get clean all
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
sudo apt install postgresql-contrib libpq-dev
# export CONFIGURE_ARGS="with-pg-include=/usr/lib/postgresql/13/"
# gem install pg
# gem install pg -v 1.1.3 -- --with-pg-config=/usr/pgsql-9.X/bin/pg_config
# gem install pg -v 1.1.3 -- --with-pg-config=/usr/lib/postgresql/13/bin/pg_config
# gem install pg -v 1.1.3 -- --with-pg-config=$(which pg_config)
```

## Deploy your application to Heroku
```sh
cd github_events/
bundle install
heroku create --stack heroku-18
git init
heroku git:remote -a kinder-parliament-90295
git add .
git commit -am "make it better"
heroku addons:create heroku-postgresql
git push heroku master
```

### Migrate your database
```sh
heroku run rake db:migrate
heroku run rake db:seed
heroku run rails console
```

### Visit your application
```sh
heroku ps:scale web=1
heroku ps
```
