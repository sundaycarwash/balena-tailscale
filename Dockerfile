FROM tailscale/tailscale:v1.76.6@sha256:da35f0fbeb3037754049e3b079cb30c58c140576a50b54be107c0ff6ad0ec0e9

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

CMD ["/entrypoint.sh"]

ENV TS_STATE_DIR "/var/lib/tailscale"
ENV TS_SOCKET "/var/run/tailscale/tailscaled.sock"
ENV TS_EXTRA_ARGS "--reset"
ENV TS_AUTH_ONCE "true"

ENV REQUIRE_AUTH_KEY "false"
