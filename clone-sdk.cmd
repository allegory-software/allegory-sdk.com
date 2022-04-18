@echo off

@rem alternatively, do this:
@rem mklink /D sdk X:\sdk

git clone git@github.com:allegory-software/allegory-sdk              sdk
git clone git@github.com:allegory-software/allegory-sdk-bin-debian10 sdk/bin/linux
git clone git@github.com:allegory-software/allegory-sdk-bin-windows  sdk/bin/windows

pushd sdk
git checkout dev
popd

pushd sdk/bin/linux
git checkout dev
popd

pushd sdk/bin/windows
git checkout dev
popd
