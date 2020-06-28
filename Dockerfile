FROM node:lts-alpine

RUN apk --update --no-cache add curl g++ make python && \
	npm install --global --unsafe-perm=true pouchdb-server && \
	rm -rf /root/.[^.]* && \
	apk del g++ make python

WORKDIR /pouchdb

ENTRYPOINT ["pouchdb-server"]

CMD ["--host", "0.0.0.0"]
