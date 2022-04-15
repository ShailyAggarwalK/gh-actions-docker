# gh-actions-docker
Try Github Secrets Access with Java

1. Github & Docker Secrets worked as required for infra level secrets: pushing to docker registry.
2. But not working for application level secrets, for that build_args worked but it still prints secret values in image logs in docker registry.
   https://github.com/ShailyAggarwalK/gh-actions-docker/blob/4175433d5eb032302cee33b484c948e6a0880c82/.github/workflows/action.yaml
3. With build args also, it did not print secret values in github workflow (masked it with ***, only for secrets) but it printed values in docker image logs (docker hub), which if public image can be problematic...there use vault or docker swarm with docker secret.

Working Code With secrets:
Using Create-Env github action
1. it basically is reading from github secrets and creating a temp file in github container, which we can then add in dockerfile.
2. initially failed, because temp files are not picked up default context of docker build push action,it only picks checkout code - so override path context with . (refer <a>https://github.com/marketplace/actions/build-and-push-docker-images</a> -> Be careful because any file mutation in the steps that precede the build step will be ignored, including processing of the .dockerignore file since the context is based on the Git reference. However, you can use the Path context using the context input alongside the actions/checkout action to remove this restriction.)
3. with this build-args and secret printing in docker image also not needed.
4. All are happy now :) 
