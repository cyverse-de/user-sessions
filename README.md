# user-sessions

A service for the CyVerse Discovery Environment that provides CRUD access to user sessions.

## Build

```bash
docker run --rm -v $(pwd):/go/src/github.com/cyverse-de/user-sessions -w /go/src/github.com/cyverse-de/user-sessions golang:1.6 go build -v
docker build --rm -t discoenv/user-sessions .
```

