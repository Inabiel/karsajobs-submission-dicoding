#building the image
docker build . -t ghcr.io/inabiel/karsajobs-ui:latest

#cli login
echo $GITHUB_TOKEN | docker login ghcr.io -u inabiel --password-stdin

#push to the specified repo
docker push ghcr.io/inabiel/karsajobs-ui:latest