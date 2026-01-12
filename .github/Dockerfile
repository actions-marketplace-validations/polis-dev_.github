FROM alpine:edge
COPY ./setup-alpine.sh /tmp/
RUN chmod +x /tmp/setup-alpine.sh && /tmp/setup-alpine.sh && rm -rf /tmp/* /var/cache/*
ENTRYPOINT []
CMD []
# copy in any files we havent added to the .dockerignore in this dir.
COPY . /
LABEL org.opencontainers.image.description="reusable container for .github/workflows"
