ARG RUBY_VERSION
# Use the official Ruby image as a base image
FROM ruby:$RUBY_VERSION

ARG USER_ID=0
ARG USER_NAME=root
ARG TZ=America/Toronto

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN if ! id -u $USER_NAME; then adduser -u $USER_ID $USER_NAME --force-badname; fi

ENV APP_HOME /app
RUN mkdir $APP_HOME && chown -R $USER_NAME:$USER_NAME $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN chown -R $USER_NAME:$USER_NAME $APP_HOME

# The commands below will be ran as the app user
USER $USER_NAME

RUN gem install bundler -v '~>2'
RUN bundle install --jobs $(nproc)

# Add a script to be executed every time the container starts.
COPY --chmod=0755 entrypoint.sh /usr/bin/
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
