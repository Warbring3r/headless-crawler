default:
	 docker build . -t headless-crawler:latest
	 docker run -ti --rm --name "headless-crawler-container" --net=host headless-crawler:latest /bin/bash

test:
	 docker build . -t headless-crawler:latest
	 docker run -ti --rm --name "headless-crawler-container" --net=host headless-crawler:latest node src/example.js