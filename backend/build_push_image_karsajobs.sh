#building the image
docker build . -t ghcr.io/inabiel/karsajobs:latest

#exporting github personal access token (dont use this, please! :( )
export CR_PAT=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

#cli login
echo $CR_PAT | docker login ghcr.io -u inabiel --password-stdin

#push to the specified repo
docker push ghcr.io/inabiel/karsajobs:latest