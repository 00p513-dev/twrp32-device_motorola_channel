#!/bin/bash
if [ -n "$ANDROID_ROOT" ]; then
	cd $ANDROID_ROOT
fi

cd $ANDROID_ROOT
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
lunch omni_channel-eng
make -j$(nproc) recoveryimage
