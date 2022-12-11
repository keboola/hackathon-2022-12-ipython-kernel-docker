FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    jq \
    python3.8 \
    python3-pip \
    python3-setuptools \
    netcat

RUN pip3 install --upgrade pip
RUN pip3 install ipython ipykernel

COPY entrypoint.sh entrypoint.sh

# At runtime, mount the connection file to /tmp/connection_file.json
ENTRYPOINT [ "./entrypoint.sh"]
