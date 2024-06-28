FROM ubuntu:focal

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    curl \
    ffmpeg \
    wget

WORKDIR /app

COPY download.sh .
RUN chmod +x download.sh

ENTRYPOINT [ "./download.sh" ]
