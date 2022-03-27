FROM ruby:3.1

RUN mkdir /usr/app
WORKDIR /usr/app
COPY Gemfile /usr/app/Gemfile
COPY Gemfile.lock /usrr/app/Gemfile.lock
RUN bundle install
COPY . /usr/app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]