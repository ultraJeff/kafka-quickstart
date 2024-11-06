../mvnw package -DskipTests
docker buildx build --platform=linux/amd64 -f src/main/docker/Dockerfile.jvm -t jefrankl/quickstart-kafka-producer .
docker tag jefrankl/quickstart-kafka-producer quay.io/jefrankl/quickstart-kafka-producer
docker push quay.io/jefrankl/quickstart-kafka-producer