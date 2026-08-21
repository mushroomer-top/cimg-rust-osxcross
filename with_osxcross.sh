#!/bin/sh

export OSXCROSS_ROOT="/osxcross"

export SDKROOT="$OSXCROSS_ROOT/SDK/MacOSX11.1.sdk"

export PATH="$OSXCROSS_ROOT/bin:$PATH"

export LD_LIBRARY_PATH="$OSXCROSS_ROOT/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

export CARGO_TARGET_AARCH64_APPLE_DARWIN_LINKER="aarch64-apple-darwin20.2-clang"
export CARGO_TARGET_AARCH64_APPLE_DARWIN_AR="aarch64-apple-darwin20.2-ar"

export CC_aarch64_apple_darwin="aarch64-apple-darwin20.2-clang"
export CFLAGS_aarch64_apple_darwin="-arch arm64"

exec "$@"
