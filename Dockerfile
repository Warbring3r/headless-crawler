FROM 998131032990.dkr.ecr.us-east-1.amazonaws.com/ubuntu14.04:latest

WORKDIR /mnt/headless-crawler
RUN apt-get update && \
    apt install wget && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && sudo apt-get install yarn
RUN apt-get install -y vim
ADD . / ./
RUN yarn
