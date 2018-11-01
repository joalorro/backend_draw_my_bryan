# Draw With Me (server)

Draw With Me is an app that provides a canvas for users to collaboratively draw together. It utilizes ActionCable to drive the real-time updates within the canvas and chat feature.

### Prerequisites 

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