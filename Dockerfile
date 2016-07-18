FROM jeanblanchard/alpine-glibc

ADD user-sessions /bin/user-sessions

ARG git_commit=unknown
ARG buildenv_git_commit=unknown
ARG version=unknown
LABEL org.iplantc.de.user-sessions.git-ref="$git_commit" \
      org.iplantc.de.user-sessions.version="$version" \
      org.iplantc.de.buildenv.git-ref="$buildenv_git_commit"

EXPOSE 60000
ENTRYPOINT ["user-sessions"]
CMD ["--help"]
