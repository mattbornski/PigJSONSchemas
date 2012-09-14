#!/bin/bash

brew --help &> /dev/null || ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
brew install hadoop
brew install pig