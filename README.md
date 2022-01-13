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

### 2. [Variables](https://dart.dev/guides/language/language-tour#variables)

    var name = 'Bob';

Variables store references. 

The type of the name variable is [type inferred](https://dart.dev/guides/language/effective-dart/design#types) to be String, but you can change that type by specifying it. If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).

    Object name = 'Bob';

Another option is to explicitly declare the type that would be inferred:

    String name = 'Bob';
#### Default value
Uninitialized variables that have a nullable type have an initial value of null. Even variables with numeric types are initially null, because numbers—like everything else in Dart—are objects.

    int? lineCount;
    assert(lineCount == null);

`Production code ignored the assert() call. During development, on the other hand, assert(condition) throws an exception if condition is false.`

#### Late variables
Two use cases of late modifier.
- Declaring a non-nullable variable that's initialized after its declaration.
- Lazily initializing a variable.
  
    late String description;

    void main(){
        description = 'Sanliurfa';
        print(description);
    }

When you mark a variablel as late but initialize it at its declaration, then the initializer runs the first time the variable is used. This lazy initialization is handy in couple of cases:
- The variable might not be needed, and initializing it is costly.
- You're initializing an instance variable, and its initializer needs access to this.
    
    // This is the program's only call to _readThermometer().
    late String temperature = _readThermometer(); // Lazily initialized.

#### Final and const
If you never intend to change a variable, use `final` or `const`, either instead of var or in addition to a type. A final variable can be set only once; a const variable is a compile-time constant.

    final name = 'Mehmet'; // Without a type annotation
    final String nickname = 'demirdev';

Use `const` for variables that you want to be compile-time constants. If the const variable is at the class level, mark it static const.

    const bar = 10000000; // unit of pressure
    const double atm = 1.01325 * bar; // Standadrd atmosphere

Any variable can have a constant value.

    var foo = const [];
    final bar = const [];
    const baz = []; // Equivalent to `const []`

You can define constants that use type checks and casts(is and as), collection if, and spread operators (... and ...?):

    const Object i = 3;
    const list = [i as int];
    const map = {if (i is int) i: 'int'};
    const set = {if (list is List<int>) ...list};

const and final object are `immutable`.

### Printing to the console

    print('Hello from dart'.runtimeType);








