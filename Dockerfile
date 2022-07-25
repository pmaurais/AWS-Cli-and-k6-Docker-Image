FROM grafana/k6 AS k6

FROM alpine:latest
COPY --from=k6 /usr/bin/k6 /usr/bin/k6
RUN apk --no-cache add \
      bash \
      curl \
      python3 \
      py3-pip \
      py-pip && \
      pip install --upgrade pip awscli