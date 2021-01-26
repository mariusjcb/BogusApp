#!/bin/bash

set -eo pipefail

cd Common/BogusApp-Common-Networking; swift test --parallel; cd ..
