#!/bin/bash
sudo apt-get install \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4-openssl-dev \
          libedit2 \
          libgcc-9-dev \
          libpython3.8 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2-dev \
          libz3-dev \
          pkg-config \
          tzdata \
          unzip \
          zlib1g-dev \
          -y 
wget https://download.swift.org/swift-5.8.1-release/ubuntu2204/swift-5.8.1-RELEASE/swift-5.8.1-RELEASE-ubuntu22.04.tar.gz -O swift.tar.gz
tar xzf swift.tar.gz --one-top-level=swift
sudo mv swift /usr/share/swift
touch ~/.zshrc
echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.zshrc
source ~/.zshrc
rm -rf swift/
rm -rf swift.tar.gz
