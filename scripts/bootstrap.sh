#!/bin/bash

if [ ! -d "bin/sassc" ]; then
    git clone https://github.com/sass/sassc.git "bin/sassc"
else 
    echo "Sassc already exists, skiping Git Clone"
fi

export SASS_LIBSASS_PATH="$PWD/bin/libsass"
export SASS_SPEC_PATH="$PWD/bin/sass-spec"

pushd bin/sassc > /dev/null

script/bootstrap
make
chmod +x bin/sassc

popd > /dev/null
