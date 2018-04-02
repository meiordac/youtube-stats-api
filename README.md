# README

Create a webapp that allows users to login with their Youtube/Google account and
join a live video stream. Once in the stream, it should stream all chat messages
and update live. Store these messages and create another interface that will
return all chat messages from a given username.


* Configuration

In config initializers there is a omniauth.rb.dist which contains google client id and secrest which should be replaced and the .dist removed from the file extension.

Same should be done for key.js.dist replacing the api key.

Also our ip should be added to the list of acceptes ips in the google api settings page

* Deployment instructions

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)