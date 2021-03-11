FROM golang:buster
RUN go get -v github.com/rubenv/sql-migrate/...
RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
RUN chmod +x cloud_sql_proxy
RUN mkdir /cloudsql