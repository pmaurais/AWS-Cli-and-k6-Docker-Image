FROM grafana/k6 AS k6

FROM docker
COPY --from=k6 /usr/bin/k6 /usr/bin/k6
RUN apk --no-cache add \
    bash \
    curl \
    aws-cli
