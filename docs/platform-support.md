# Supported Platforms

reflex-platform supports building *on* x86_64 and aarch64 linux and macOS systems. It supports building *for* Android, iOS, Javascript, Linux, and macOS targets.

Depending on the build system you are using, you can build for the following targets:

|               | Javascript | Android | iOS | Linux x86_64 | Linux aarch64 | macOS (intel) | macOS (m1/m2) |
|---------------|------------|---------|-----|--------------|---------------|---------------|---------------|
| Linux x86_64  | ✅         | ✅      |     | ✅           |               |               |               |
| Linux aarch64 | ✅         |         |     |              | ✅            |               |               |
| macOS (intel) | ✅         |         | ✅  |              |               | ✅            |               |
| macOS (m1/m2) | ✅         |         |     |              |               |               | ✅            |

* From Linux, you can't build for iOS or macOS because the apple toolchain is restricted to macOS.
* Android builds aren't yet supported from macOS.
* When building a desktop app on x86_64-linux you can use webkitgtk, but that isn't yet supported on aarch64-linux. You can, however, build your backend executable and warp-based frontend executables on either architecture.
* When building a desktop app on macOS you can use wkwebview or warp.
* 32-bit Android builds are no longer supported.
* The default GHC version is now 9.12. GHC 8.6 and 8.10 are no longer supported.
* Cross-compilation (Android, iOS) uses Template Haskell splices to handle TH code that cannot run on the host platform.

## Binary Caches

Binary caches are provided for x86_64-linux, x86_64-darwin, and aarch64-darwin. We will be adding an aarch64-linux cache in the future.
