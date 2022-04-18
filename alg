#!/bin/sh
exec "${0%alg}sdk/bin/linux/luajit" "${0%alg}alg.lua" "$@"
