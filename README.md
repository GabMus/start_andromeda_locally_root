# start_andromeda_locally_root
A script to be ran from Android (with root) to enable Andromeda.

## Intro

### What is Andromeda?

[Andromeda](https://forum.xda-developers.com/apps/substratum/andromeda-desktop-clients-release-notes-t3668682) is an app that enables you to use the [Substratum theme engine](https://play.google.com/store/apps/details?id=projekt.substratum) on Android 8 Oreo without root.

### What does this script do?

Andromeda requires the user to run a shell/adb script with the phone connected to the PC to enable its functionality. This isn't very convenient, expecially when you don't have your computer with you.

If you have root access you can run this shell script directly from your phone to enable Andromeda functionality.

## How to

**Important: you NEED root access. If you don't, I suggest to install [Magisk](https://forum.xda-developers.com/apps/magisk/official-magisk-v7-universal-systemless-t3473445)**

- Download `andromeda_local.sh` from this repository and put it on your phone in an easy to reach location. Some good locations could be `/sdcard/` or `/sdcard/Documents`.
- Install *Terminal Emuator for Android* either from the [Play Store](https://play.google.com/store/apps/details?id=jackpal.androidterm) or from [FDroid](https://f-droid.org/packages/jackpal.androidterm/)
- Run *Terminal Emulator* and run `su`. A pop-up will come up asking you to grant root permissions. Grant them.
- Run `sh` followed by the full path the `andromeda_local.sh` script. Example: if I have it in `/sdcard/Documents/` I will write `sh /sdcard/Documents/andromeda_local.sh`.
- (Optional) You may want to close the android terminal using the "X" icon on the top right section of the Toolbar.
- Done, happy theming!
