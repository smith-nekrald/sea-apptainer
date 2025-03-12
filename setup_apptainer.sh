#!/usr/bin/env bash

# Installs apptainer and necessary packages

# Author: Aliaksandr Nekrashevich
# Email: aliaksandr.nekrashevich@queensu.ca
# (c) Smith School of Business, 2025

set -uexo

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-get install -y build-essential libseccomp-dev pkg-config uidmap fakeroot cryptsetup \
    tzdata dh-apparmor curl wget git

sudo apt-add-repository -y ppa:apptainer/ppa
sudo apt-get update
sudo apt-get install -y apptainer

set +uexo
