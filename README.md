# gh-actions-docker
Try Github Secrets Access with Java

1. Github & Docker Secrets worked as required for infra level secrets: pushing to docker registry.
2. But not working for application level secrets, for that build_args worked but it still prints secret values in image logs in docker registry.
   https://github.com/ShailyAggarwalK/gh-actions-docker/blob/4175433d5eb032302cee33b484c948e6a0880c82/.github/workflows/action.yaml
3. With build args also, it did not print secret values in github workflow (masked it with ***, only for secrets) but it printed values in docker image logs (docker hub), which if public image can be problematic...there use vault or docker swarm with docker secret.
