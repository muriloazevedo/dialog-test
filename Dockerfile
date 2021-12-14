FROM ruby:2.7.2

# Dependencies
RUN docker="wait-for-it" \
  && postgresql="postgresql-client" \
  && deps="$docker $postgresql" \
  && apt-get -qq update \
  && apt-get -qq install $deps > /dev/null \
  && apt-get -qq install vim > /dev/null \
  && rm -rf /var/lib/apt/lists/*

# Include variables
ARG USER
ARG UID
ARG BUNDLEINSTALL

# Test variables
RUN test -n "$USER"
RUN test -n "$UID"

# Create user from host
RUN adduser --quiet --gecos "$USER" --uid "$UID" --disabled-login "$USER"

# Define rails default dir
WORKDIR /app

# Prepare and install Gems
COPY --chown=${USER} Gemfile .
COPY --chown=${USER} Gemfile.lock .

USER "$USER"


COPY --chown=${USER} . .

RUN bundle install

EXPOSE 3000

# ENTRYPOINT
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
