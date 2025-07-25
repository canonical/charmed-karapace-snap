#!/bin/bash

set -e

"${SNAP}"/bin/python -c 'from karapace import version; print(version.__version__)'
