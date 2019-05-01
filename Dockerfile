FROM alpine:latest

ADD ./script.sh /usr/local/bin

EXPOSE 8050

#CMD ["sh", "/usr/local/bin/script.sh"]
RUN sh /usr/local/bin/script.sh