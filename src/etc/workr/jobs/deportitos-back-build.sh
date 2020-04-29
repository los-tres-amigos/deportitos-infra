#!/usr/bin/env bash
set -euo pipefail

git clone https://github.com/los-tres-amigos/deportitos-back.git
cd deportitos-back
mvn package
