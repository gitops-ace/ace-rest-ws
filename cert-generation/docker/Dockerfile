FROM registry.access.redhat.com/ubi8/ubi-minimal

USER root
RUN microdnf install --nodocs java-1.8.0-openjdk-headless openssl make \
  && microdnf clean all

COPY src /src

ENTRYPOINT []
