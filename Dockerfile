# edge because:
# - `riscv64` only available in there
FROM alpine:edge AS downloader

ARG TARGETOS=linux
ARG TARGETARCH=amd64

RUN apk add xz
RUN cd /tmp \
	&& wget -O pdfcpu.tar.xz "https://function61.com/app-dl/api/github.com/pdfcpu/pdfcpu/latest_releases_asset/__autodetect__.tar.xz?os=$TARGETOS&arch=$TARGETARCH" \
	&& xz -d pdfcpu.tar.xz \
	&& tar -xf pdfcpu.tar \
	&& mv pdfcpu*/pdfcpu /pdfcpu

FROM scratch

WORKDIR /workspace

# run as unprivileged user
USER 1000:1000

ENTRYPOINT ["/bin/pdfcpu"]

COPY --from=downloader /pdfcpu /bin/pdfcpu

