FROM phusion/passenger-ruby22:latest
MAINTAINER Ivan Santos <hey@ivansjr.com>

# CRONTAB
RUN apt-get install cron

ENV HOME /home/app/larica

RUN mkdir $HOME
RUN mkdir -p ${HOME}/log
RUN chown -R app ${HOME}/log

# TODO: Use Volumes intead.
WORKDIR /tmp
ADD Gemfile /tmp/Gemfile
ADD Gemfile.lock /tmp/Gemfile.lock
RUN bundle check || bundle install

ADD . $HOME
ADD config/database.yml.docker ${HOME}/config/database.yml

WORKDIR $HOME

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80

CMD ["/sbin/my_init"]
