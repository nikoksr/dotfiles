#!/usr/bin/env bash

cobra init --pkg-name github.com/nikoksr/"$1"
go mod init github.com/nikoksr/"$1"
