# PouchDB
PouchDB Server

docker run --rm -it -p 5984:5984 -v /path/to/data:/pouchdb --hostname=pouchdb-server --name=pouchdb-server shawoo/pouchdb

You can then browse to the admin panel at http://localhost:5984/_utils/.
