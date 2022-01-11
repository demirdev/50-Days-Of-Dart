# 50-Days-Of-Dart

## Day 1
### Suggested Subjects
1. Introduction to Dart
2. SDK Installation
### My Notes / Readings
1. Dart Overview [https://dart.dev/overview] 
2. Dart SDK Overview [https://dart.dev/tools/sdk]
3. Get the Dart SDK [https://dart.dev/get-dart]
4. Dart SDK already installed on my computer.
5. Created this github repository.
   
## Day 2
### Suggested Subjects
1. Project creation methods 
2. Inspecting the project directory
3. Running "Hello World" app
### My Notes / Readings
1.  Command-line and server apps [https://dart.dev/server]
    1.  DartPad [https://dartpad.dev]
2.  Project creation methods
    1.  Create command-line app with console-full template.<br>
    `dart create -t console-full app-cli`
3.  Inspecting the project directory
    1.  Entry point of app is main() function, which is in the `bin/app_cli.dart`
    2.  `lib/app_cli.dart` is functionality of the app and imported by the `bin/app_cli.dart` file.
    3.  `pubspec.yaml` file contains app's metadata, packages the app depends on and which versions of those packages are required.
    4.  `dart create` runs `dart pub get` which scans the generated pubspec file and downloads dependencies. If you add other dependencies to your pubspec file, then run `dart pub get` to download them.
4.  Running "Hello World" app
    1. To run the app from command line, use the Dart VM by running `dart run` command in the app's top directory.
    2. `cd app-cli`
    3. `dart run`
5. Compile for production
   1. The steps above used the Dart VM (dart) to run the app. The Dart VM is optimized for fast, incremental compilation to provide instant feedback during development. Now that our small app is done, it's time to `AOT compile your Dart code to optimized native machine code`.
   2. `dart compile exe bin/app_cli.dart`
   3. for execute the app in terminal : `bin/app_cli.exe`
   4. Compare Dart VM and compiled with AOT app speed.
      1. `time dart run` takes 0.808 seconds
      2. `time bin/app_cli.exe` takes 0.254 seconds.
      3. `compiled app` is `318% faster` than (`dart run ..`) using `Dart VM`
    

