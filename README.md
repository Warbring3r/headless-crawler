# headless-crawler
Headless browser crawler intended to follow JS redirects

Usage: make default -
This will build and start the container with a bash shell. In there you can control the headless browser using JS. See example.js for an example. You can also run "make test" to directly run example.js

Requirements: docker

Notes: It uses headless chrome and the puppeteer API to drive it - https://github.com/GoogleChrome/puppeteer
