#!/bin/bash

JX_VERSION=1.3.161
GIT_USER="Jenkins-X"
GIT_EMAIL="tutorial@jenkins-x.io"

function install_dependencies() {
	wget -q https://github.com/jenkins-x/jx/releases/download/v${JX_VERSION}/jx-linux-amd64.tar.gz
	tar xvf jx-linux-amd64.tar.gz >/dev/null 2>&1
	rm jx-linux-amd64.tar.gz >/dev/null 2>&1
	echo "export PATH=$PATH:$PWD"
}

function configure_environment() {
	git config --global --add user.name "${GIT_USER}"
	git config --global --add user.email "${GIT_EMAIL}"
}

install_dependencies
configure_environment