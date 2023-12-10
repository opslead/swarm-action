FROM docker:stable

LABEL 'name'='Swarm Deployment Action'
LABEL 'maintainer'='opslead'

LABEL 'com.github.actions.name'='Swarm Deployment'
LABEL 'com.github.actions.description'='supports Docker Swarm deployments'
LABEL 'com.github.actions.icon'='send'
LABEL 'com.github.actions.color'='green'

RUN apk --no-cache add openssh-client

COPY entrypoint /entrypoint

ENTRYPOINT ["/entrypoint"]
