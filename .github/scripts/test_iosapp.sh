#!/bin/bash

set -eo pipefail

xcodebuild -workspace BogusApp.xcworkspace \
            -scheme BogusApp
            -destination platform=iOS\ Simulator,OS=13.3,name=iPhone\ 11 \
            clean test | xcpretty
