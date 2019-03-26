FROM thebiggerguy/docker-pulseaudio-example

USER root
RUN apt-get update && apt-get install chromium-browser curl -y
RUN adduser $UNAME video
USER $UNAME

COPY docker-entrypoint.sh docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]

CMD ["https://test.webrtc.org"]

