# Draw With Me (server)

Before running, be sure to have the following installed and running:
* Ruby version: 2.3.3 (or greater)
* [PostgreSQL](https://www.postgresql.org/) database software 

### Installation 

Run the following from your terminal in the root directory of this repo:

```
bundle install
rake db:setup
rake db:migrate
rails s
```

### Precautions

This server was made without using redis or other temporary servers. Be sure to clear the database often (with rake db:reset ), to prevent storing too much information on the database and your local computer.