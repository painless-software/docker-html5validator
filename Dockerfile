FROM python:3-slim

ENV DEBIAN_FRONTEND noninteractive

# NOTE: We need to do a mkdir as long the openjdk package is broken 8-/

RUN mkdir -p /usr/share/man/man1 \
 && apt-get update \
 && apt-get install -y openjdk-11-jre-headless \
 && rm -r /usr/share/doc/* /usr/share/man/* \
 && apt-get clean

COPY requirements.txt ./

RUN python3 -m pip install -r requirements.txt

WORKDIR /app

USER nobody

CMD ["html5validator", "--root", "/app", "--also-check-css", "--also-check-svg", "--show-warnings"]
