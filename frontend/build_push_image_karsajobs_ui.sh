#building the image
docker build . -t ghcr.io/inabiel/karsajobs-ui:latest

#exporting github personal access token (dont use this, please! :( )
export CR_PAT=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

#cli login
echo $CR_PAT | docker login ghcr.io -u inabiel --password-stdin

#push to the specified repo
docker push ghcr.io/inabiel/karsajobs-ui:latest