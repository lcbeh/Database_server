# Database_server

## The Brief

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

## User Stories

```
As a user,
So I can store some information
I want to add a key and value to a server

As a user,
So I can view the information I stored
I want to be able to retrieve the data from the server
```

## Technologies
Ruby, Sinatra and RSpec

## Installation
- Clone this repo - **git clone git@github.com:lcbeh/Database_server.git**

- Run **bundle install**

- Run test - **rspec** in root directory

- Run server - **ruby lib/my_app.rb**

- Go to **http://localhost:4000/**. To set data, go to http://localhost:4000/set and append ?somekey=somevalue. To retrieve data, http://localhost:4000/get and append ?key=somekey.
