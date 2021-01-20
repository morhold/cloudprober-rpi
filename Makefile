GOOS=linux GOARCH=arm GOARM=7 CGO_ENABLED=0 go build -o cloudprober -ldflags "-X main.version=v0.11.1-33-gc4dca15 -extldflags -static" ./cmd/cloudprober.go
docker buildx  build \
  --push \
  --platform linux/arm/v7 \
  --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
  --build-arg VERSION=v0.11.1-33-gc4dca15 \
  --build-arg VCS_REF=c4dca15 \
  -t morhold/cloudprober-rpi  .
