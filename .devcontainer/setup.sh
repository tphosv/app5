#!/bin/bash

# Cài đặt Flutter
git clone https://github.com/flutter/flutter.git -b stable $HOME/flutter
echo 'export PATH="$HOME/flutter/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Cài đặt Android SDK
mkdir -p $HOME/android-sdk/cmdline-tools
cd $HOME/android-sdk/cmdline-tools
curl -O https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
mv cmdline-tools latest

# Cấu hình Android SDK
echo 'export ANDROID_HOME=$HOME/android-sdk' >> ~/.bashrc
echo 'export ANDROID_SDK_ROOT=$HOME/android-sdk' >> ~/.bashrc
echo 'export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH' >> ~/.bashrc
source ~/.bashrc

# Cài đặt các thành phần SDK cần thiết
sdkmanager --install "platform-tools" "platforms;android-34" "build-tools;34.0.0" "emulator"
sdkmanager --licenses
