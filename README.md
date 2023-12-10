# Swarm Deploy Action

A [GitHub Action](https://github.com/features/actions) that enables you to publish your app as a [Docker stack](https://docs.docker.com/engine/swarm/stack-deploy/) to a remote Docker swarm.

## Example

Below is a brief example on how the action can be used:

```yaml
- name: Deploy to swarm
  uses: oplead/swarm-action@v1
  with:
    remote_host: swarm.server.com
    ssh_private_key: ${{ secrets.DOCKER_SSH_PRIVATE_KEY }}
    registry_username: ${{ secrets.DOCKERHUB_USERNAME }}
    registry_password: ${{ secrets.DOCKERHUB_TOKEN }}
    args: docker --context swarm stack deploy -c stack.yml coolapp
```

If you are deploying any private Docker images, you can use the [Docker Login](https://github.com/marketplace/actions/docker-login) action to first log in to your private registry, and then provide the `--with-registry-auth` flag to `docker stack deploy` to use the logged in credentials during deployment.

## Inputs

Below are all of the supported inputs. Some inputs used to authenticate with your swarm should be kept private, and should be supplied as secrets for security.

### `args`

Command that should be executed using docker context, for example `docker stack deploy -c stack.yml coolapp`

### `remote_host`

This must be a manager node in your swarm for most operations to work.

### `ssh_private_key`

When connecting to Docker over SSH, this must contain the SSH private key to use to connect. To generate keypair need to use `ssh-keygen -m PEM -t rsa -P ""`

### `registry_username`

Docker Registry username

### `registry_password`

Docker Registry password

## Contributing
We'd love for you to contribute to this container. You can request new features by creating an [issue](https://github.com/opslead/swarm-action/issues), or submit a [pull request](https://github.com/opslead/swarm-action/pulls) with your contribution.

## Issues
If you encountered a problem running this container, you can file an [issue](https://github.com/opslead/swarm-action/issues). For us to provide better support, be sure to include the following information in your issue:

- Host OS and version
- Docker version
- Output of docker info
- Version of this container
- The command you used to run the container, and any relevant output you saw (masking any sensitive information)


## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file for details.