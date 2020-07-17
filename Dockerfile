FROM ubuntu:latest

RUN apt-get update && \
    TZ="America/Toronto" DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y rubber texlive-fonts-recommended \
                       texlive-latex-recommended \
                       texlive-latex-extra texlive-science && \
    rm -rf /var/lib/apt/lists/
WORKDIR /workdir
ADD entrypoint.sh .
ENTRYPOINT ./entrypoint.sh
