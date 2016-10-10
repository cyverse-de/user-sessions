FROM discoenv/golang-base:master

ENV CONF_TEMPLATE=/go/src/github.com/cyverse-de/user-sessions/jobservices.yml.tmpl
ENV CONF_FILENAME=jobservices.yml
ENV PROGRAM=user-sessions

ARG git_commit=unknown
ARG version="2.9.0"

LABEL org.cyverse.git-ref="$git_commit"
LABEL org.cyverse.version="$version"

COPY . /go/src/github.com/cyverse-de/user-sessions
RUN go install -v -ldflags "-X main.appver=$version -X main.gitref=$git_commit" github.com/cyverse-de/user-sessions

EXPOSE 60000
