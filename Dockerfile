FROM ubuntu:16.04

# Install chromium
RUN apt-get update \
    && apt-get install chromium-browser alsa-base -y \
    && rm -rf /var/lib/apt/lists/*

# Create a normal user to run chromium as
RUN useradd --create-home browser \
    && adduser browser video \
    && adduser browser audio
USER browser
WORKDIR /home/browser

CMD ["/usr/bin/chromium-browser"]

