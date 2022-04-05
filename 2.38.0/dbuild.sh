#!/bin/bash

# Copyright © 2021-2022 Pittsburgh Supercomputing Center.
# All Rights Reserved.

PACKAGE=graphviz
VERSION=2.38.0

docker build -t icaoberg/$PACKAGE:$VERSION .
