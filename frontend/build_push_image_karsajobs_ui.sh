#building the image
docker build . -t ghcr.io/inabiel/karsajobs-ui:latest

#exporting github personal access token (dont use this, please! :( )
export CR_PAT=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

#cli login
echo $CR_PAT | docker login ghcr.io -u inabiel --password-stdin

#push to the specified repo
docker push ghcr.io/inabiel/karsajobs-ui:latest