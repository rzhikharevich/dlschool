#!/bin/sh

set -e

tail -n +6 | awk -f prepare_games.awk | sort -rnk1
