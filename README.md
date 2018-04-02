# README

Create a webapp that allows users to login with their Youtube/Google account and
join a live video stream. Once in the stream, it should stream all chat messages
and update live. Store these messages and create another interface that will
return all chat messages from a given username.

## Notes

## Back-end

Please  (1) avoid doing all the work client side, (2) for sever side do not use any JS/node code.
Also let us know how comfortable you are with the chosen language so
we can take that into consideration as we are reading through your code.

## Front-end

The front-end should be a single `index.html` file linking to external CSS/JS.
Psst, this is a good chance to flex your CSS3 or HTML5 knowledge.


* Configuration

In config initializers there is a omniauth.rb.dist which contains google client id and secrest which should be replaced and the .dist removed from the file extension.

Same should be done for key.js.dist replacing the api key.

Also our ip should be added to the list of acceptes ips in the google api settings page

* Deployment instructions

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)