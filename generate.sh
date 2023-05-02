#!/bin/sh
set +e # Don't stop if an error is encountered. The `collect` step might return an error code if non-critical errors are encountered when using the AWS APIs.
python cloudmapper.py collect --account $ACCOUNT
python cloudmapper.py report --account $ACCOUNT
python cloudmapper.py prepare --account $ACCOUNT