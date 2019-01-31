FROM ruby:2.5

LABEL com.github.actions.name="Rubocop"
LABEL com.github.actions.description="Lint your Ruby code in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"

LABEL maintainer="Alberto Gimeno <gimenete@gmail.com>"

COPY lib /action/lib
ENTRYPOINT ["/action/lib/entrypoint.sh"]
