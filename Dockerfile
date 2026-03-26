FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    octave \
    octave-signal \
    octave-control \
    octave-image \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Jupyter and Octave kernel
RUN pip3 install --no-cache-dir notebook octave_kernel

WORKDIR /workspace

CMD ["bash"]