#docker build --tag=app

dockerpath='dchamb16/entity_extraction'

echo 'Docker ID and Image: $dockerpath'
docker login &&\
    docker image tag app $dockerpath

docker image push $dockerpath