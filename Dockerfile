# This Dockerfile expects "cloudprober" binary and ca-certificates to exist
# in the working directory.
#
# Docker image built using this can executed in the following manner:
#   docker run --net host -v $PWD/cloudprober.cfg:/etc/cloudprober.cfg \
#                         cloudprober/cloudprober
FROM busybox
ADD cloudprober /cloudprober
RUN chmod +x /cloudprober
ENTRYPOINT ["/cloudprober", "--logtostderr"]
