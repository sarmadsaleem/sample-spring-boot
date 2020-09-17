```
# Run
./gradlew bootRun

# Build
./gradlew build

# Package in Docker
docker build -t sarmadsaleem/sample:spring-boot-app .

# Run container locally
docker run -p 8080:8080 -it --rm sarmadsaleem/sample:spring-boot-app

# Verify it works
curl http://localhost:8080

# Docker hub login
docker login --username sarmadsaleem

# Push container to registry
docker push sarmadsaleem/sample:spring-boot-app
```
