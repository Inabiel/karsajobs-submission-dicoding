#building the image
docker build . -t ghcr.io/inabiel/karsajobs-ui:latest

#exporting github personal access token (dont use this, please! :( )
export CR_PAT=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

#cli login
echo $CR_PAT | docker login ghcr.io -u inabiel --password-stdin

#push to the specified repo
docker push ghcr.io/inabiel/karsajobs-ui:latest