#!/usr/bin/env bash
set -euo pipefail

apt-get install stow

TEMP_FOLDER="/tmp/deportitos-infra-install"

MAVEN_VERSION="3.6.3"

mkdir -p ${TEMP_FOLDER}
cd ${TEMP_FOLDER}

wget "http://apache.uvigo.es/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz"
tar -xvzf "apache-maven-${MAVEN_VERSION}-bin.tar.gz"
rm -rf "/usr/local/lib/apache-maven-for-deportitos"
mv "apache-maven-${MAVEN_VERSION}" "/usr/local/lib/apache-maven-for-deportitos"
cd "/usr/local/lib/apache-maven-for-deportitos"
stow -t /usr/local/bin bin

rm -rf "${TEMP_FOLDER}"
