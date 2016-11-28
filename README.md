# Database_server

## The Brief

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file."

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.

## User Stories

```
As a user,
So I can store some information
I want to add a key and value to a server

As a user,
So I can view the information I stored
I want to be able to retrieve the value from a server
```

## Technologies
Ruby, Sinatra and RSpec
