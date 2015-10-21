FROM ubuntu:14.04

VOLUME ["/tmp"]

RUN (rm /etc/localtime && ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && echo Asia/Tokyo > /etc/timezone)
RUN (apt-get install -y curl && curl http://dist.crystal-lang.org/apt/setup.sh | sudo bash)
RUN (apt-get upgrade -y && apt-get install -y crystal build-essential)
CMD ["crystal", "run", "/tmp/main.cr"]
