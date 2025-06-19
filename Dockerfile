###############################################################
# Dockerfile to build container images for LiftOn
# Based on python 3.9-bullseye
################################################################

FROM python:3.11-bullseye

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

# Install dependencies first
RUN apt-get -qq update && \
	apt-get -qq -y install \
    wget less vim curl

# Upgrade pip
RUN pip install --upgrade pip

# Install LiftOn
RUN pip install --no-cache-dir lifton==1.0.5

# Install Miniprot
RUN git clone https://github.com/lh3/miniprot.git && \
	cd miniprot && \
	make && \
	cp miniprot /usr/local/bin/ && \
	cd .. && \
	rm -rf miniprot

# Set working directory
WORKDIR /home

# bash
CMD ["bash"]
