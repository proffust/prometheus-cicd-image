ARG PROM_VERSION=2.18.2
FROM prom/prometheus:v${PROM_VERSION} as promimage

FROM alpine:3.9
RUN apk add --no-cache py3-setuptools && pip3 install --no-cache-dir yamllint
COPY --from=promimage /bin/promtool /bin/promtool
ENTRYPOINT [""]
