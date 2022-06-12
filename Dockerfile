FROM prom/node-exporter:v1.3.1
LABEL com.fr33r.author="Jon Freer"
ENV NODE_ID=none
USER root
COPY conf /etc/node-exporter/
ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]
