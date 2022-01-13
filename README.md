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
    4.  `dart create` runs `dart pub get` which scans the generated pubspec file and downloads dependencies. <br>If you add other dependencies to your pubspec file, then run `dart pub get` to download them.
4.  Running "Hello World" app
    1. To run the app from command line, use the Dart VM by running `dart run` command in the app's top directory.
    2. `cd app-cli`
    3. `dart run`
5. Compile for production
   1. The steps above used the Dart VM (dart) to run the app. The Dart VM is optimized for fast, incremental compilation to <br> provide instant feedback during development. Now that our small app is done, it's time to <br> `AOT compile your Dart code to optimized native machine code`.
   2. `dart compile exe bin/app_cli.dart`
   3. for execute the app in terminal : `bin/app_cli.exe`
   4. Compare the speed of the execute app with Dart VM and compile with AOT 
      1. `time dart run` takes 0.808 seconds
      2. `time bin/app_cli.exe` takes 0.254 seconds.
      3. `compiled app` is `318% faster` than (`dart run ..`) using `Dart VM`
    
# Day 3
## Suggested Subjects
1. Comment lines 
2. Variables
3. Printing to the console
## My Notes / Readings
### 1. Comment lines 
#### [Comments](https://dart.dev/guides/language/language-tour#comments)
### Single-line comments
    // TODO: refactor into an AbstractLlamaGreetingFactory?
    print('Welcome to my Llama farm!');

### Multi-line comments
A multi-line comment begins with `/*` and ends with `*/`. Everything between `/*` and `*/` is ignored by the Dart compiler (unless the comment is a documentation comment; see the next section). Multi-line comments can nest.

    void main(){
        /*
         * This is a lot of work. Consider raising chickens.
        
        Llama larry = Llama();
        larry.feed();
        */
    }

### Documentation comments
Documentation comments are multi-line or single-line comments that begin with `///` or `/**`. Using `///` on consecutive lines has the same effect as a multi-line doc comment.

Inside a documentation comment, the analyzer ignores all text unless it is enclosed in brackets. Using brackets, you can refer to classes, methods, fields, top-level variables, functions, and parameters. The names in brackets are resolved in the lexical scope of the documented program element.

Here is an example of documentation comments with references to other classes and arguments:

    /// A domesticated South American camelid (Lama glama).
    ///
    /// Andean cultures have used llamas as meat and pack
    /// animals since pre-Hispanic times.
    ///
    /// Just like any other animal, llamas need to eat,
    /// so don't forget to [feed] them some [Food].
    class Llama {
    String? name;

    /// Feeds your llama [food].
    ///
    /// The typical llama eats one bale of hay per week.
    void feed(Food food) {
        // ...
    }

    /// Exercises your llama with an [activity] for
    /// [timeLimit] minutes.
    void exercise(Activity activity, int timeLimit) {
        // ...
    }
    }

In the class’s generated documentation, [feed] becomes a link to the docs for the feed method, and [Food] becomes a link to the docs for the Food class.




