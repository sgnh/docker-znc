FROM alpine

COPY ["znc.conf", "/znc/configs/znc.conf"]

RUN apk --no-cache add znc znc-extra \
    && chown -R znc:znc /znc

VOLUME /znc
USER znc

EXPOSE 6667
ENTRYPOINT ["znc", "--foreground", "--datadir=/znc"]
