# The image of Blueprint Container Test. scripts/check.sh builds it and runs its self-test;
# the release bot publishes it to the GitHub Container Registry.
FROM alpine:3.24@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

# x-release-please-start-version
LABEL org.opencontainers.image.version="0.1.0"
# x-release-please-end
LABEL org.opencontainers.image.title="Blueprint Container Test" \
      org.opencontainers.image.description="A throwaway container image that proves the isolated image build of the blueprint, for repo-blueprint#531." \
      org.opencontainers.image.source="https://github.com/Dennis-Otto/blueprint-container-test" \
      org.opencontainers.image.licenses="MIT"

COPY --chmod=0755 app/entrypoint.sh /usr/local/bin/blueprint-container-test

# The image needs no root.
USER 65534:65534
ENTRYPOINT ["/usr/local/bin/blueprint-container-test"]
