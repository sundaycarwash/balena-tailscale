FROM tailscale/tailscale:v1.66.3@sha256:cf8e97667e8be250caaed88694cec0befe11040bbd5a3de3b33086cc52ef4eb1

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

CMD ["/entrypoint.sh"]

ENV TS_STATE_DIR "/var/lib/tailscale"
ENV TS_SOCKET "/var/run/tailscale/tailscaled.sock"
ENV TS_EXTRA_ARGS "--reset"
ENV TS_AUTH_ONCE "true"

ENV REQUIRE_AUTH_KEY "false"
