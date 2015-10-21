FROM ubuntu:14.04

VOLUME ["/tmp"]

RUN (apt-get install -y curl && curl http://dist.crystal-lang.org/apt/setup.sh | sudo bash)
RUN (apt-get upgrade -y && apt-get install -y crystal build-essential)

CMD ["crystal", "run", "/tmp/main.cr"]
