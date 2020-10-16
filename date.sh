#!/bin/bash

set -x

which gdate
perl --version
echo "2020-01-02T03:04:05Z" | perl -mTime::Piece -nlE 'say Time::Piece->strptime($_, "%FT%TZ")'
echo "2020-01-02T03:04:05+0900" | perl -mTime::Piece -nlE 'say Time::Piece->strptime($_, "%FT%T%z")'

which jq
