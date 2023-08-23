#!/usr/bin/env bash

# To be run from meson

TESTS_ENVIRONMENT=("TEST_NAME=${test%.*}" 'NIX_REMOTE=')

: ${BASH:=/usr/bin/env bash}

# init test
cd ../tests && env "${TESTS_ENVIRONMENT[@]}" $BASH -e init.sh 2>/dev/null > /dev/null

# run test
cd $(dirname $1) && env "${TESTS_ENVIRONMENT[@]}" $BASH -e $(basename $1) && status=0 || status=$?

if [ $status -eq 0 ]; then
  echo "Test Result: [${green}PASS$normal]"
elif [ $status -eq 99 ]; then
  echo "Test Result: [${yellow}SKIP$normal]"
  # Exit with the GNU standard for skipped tests, so that meson understands
  # See: https://mesonbuild.com/Unit-tests.html#skipped-tests-and-hard-errors
  exit 77
else
  echo "Test Result: [${red}FAIL$normal]"
  exit "$status"
fi
