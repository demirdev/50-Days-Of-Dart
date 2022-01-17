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

Using brackets, you can refer to classes, methods, fields, top-level variables, functions, and parameters. 

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

# Day 4
## Suggested Subjects
1. Number data types
2. Boolean data type
3. String data type
## My Notes / Readings
### 1. [Number data types](https://dart.dev/guides/language/language-tour#numbers)
`int`

    var x = 1;
    var hex = 0xFFCC0000;
    var exponent = 8e5;

`double`

    var y = 1.1;
    var exponents = 1.42e5;

Both `int` and `double` are subtypes of `num`.

    num x = 1;  // x can have both int and double values
    x += 2.5;

Integer literals are automatically converted to doubles when necessary:

    double z = 1; // Equivalent to double z = 1.0.

Turn a string into a number, or vice verca:

    int.parse('1');
    double.parse('1.1');
    1.toString();
    3.1415.toStringAsFixed(2); // '3.14'

The `int` type specifies the traditional bitwise shift(<<,>>,>>>),complement(~), and (&), or (|), and XOR ^ operators,  
which are useful for manipulating and masking flags in bit fields.

    // Examples in the number_data_types.dart

Literal numbers are compile-time constants.

### 2. Booleans
Only two objects have type bool: the boolean literals are true and false, which are both compile-time constants.

    fullName.isEmpty

    hitPoints <= 0

    unicorn == null

    mybeNumber.isNaN


### 3. Strings
You can concatenate strings using adjacent string literals or the + operator;

    var s1 = 'abc'
             'def';
    var s2 = 'a' + 'b';

Multi-line string.

    var s1 = '''
        abc
        def
        ''';

You can create a `raw` string by prefixing it with `r`:

    var s = r'abc $ \n';

# Day 5
## Suggested Subjects
1. Runes and Symbols
2. Operators
## My Notes / Readings
### 1. [Runes](https://www.w3adda.com/dart-tutorial/dart-runes)

In Dart, string is represented as sequence of Unicode UTF-16 characters. 
If you want to use 32-bit Unicode characters within a string then 
it must be represented using a special syntax. A rune is an integer representing a Unicode code point.
If the hex digits are more or less than 4 digits, place the hex value in curly brackets {}.

    var hearth = '\u2665';
    var laugh = '\u{1f600}';
    
    print(hearth);
    print(hearth.codeUnits); // 1-byte
    
    print(laugh);
    print(laugh.codeUnits); // 2-bytes
    
    laugh.runes.forEach((rune) {
    print(rune);
    final _char = String.fromCharCode(rune);
    print(_char);
    });

    // output
    
    ♥
    [9829]
    😀
    [55357, 56832]
    128512
    😀

### 2. Symbols
    I dont understand.

### 3. Operators

    unary postfix       expr++  expr--  ()  []  ?[] .   ?.
    unary prefix        -expr   !expr   ~expr ++expr --expr await expr

    multiplicative      *   /   %   ~/
    additive            +   -
    shift               <<  >>  >>>

    bitwise             &   |   ^
    
    relatıonal and type test    >=  <   <=  <   as  is  is!

    equality            ==  !=

    logical AND         &&
    logical OR          ||

    if null             ??
    conditional         expr1 ? expr2 : expr3

    cascade             ..  ?..

    assignment          =   *=  /=  +=  -=  &=  ^=  etc.

 #### Arithmetic operators
    ...

 #### Equality and relational operators
    ...

 #### Type test operators
    as  Typecast
    is  True if the object has the specified type
    is! True if the object doesn't have the specified type

    // Use the as operator to cast an object to particular type if and only if 
    // you are sure that the object is of that type.
    (employee as Person).firstName = 'Mehmet';

    // If you aren't sure that the object is of type T, 
    // then use is T to check the type before using the object.
    if(employee is Person){
        employee.firstName = 'Mehmet';
    }

#### Assignment operators
    // Assign value to b if b is null; otherwise, b stays the same
    b ??= value;

Compound assignment operators such as  += combine an operation with an assignment.

    =   *=  %=  >>>=    ^=
    +=  /=  <<= &=  |=
    -=  ~/= >>=

Here's how compound assignment operators work

    a op= b     =>  a = a op b
    a += b      =>  a = a + b

#### Logical Operators
    !expr   inverts the folling expression
    ||      logical OR
    &&      logical AND

    if(!done && (col == 0 || col == 3)){
        // ....
    }

#### Bitwise and shift operators
    ...

#### Conditional expressions
Dart has two operators that let you concisely evaluate 
expressions that might otherwise require if-else statements.

When you need to assign a value based on a boolean expression, 
consider using ? and :.

    var visiblity = isPublic ? 'public' : 'private';


expr1 ?? expr2
If expr1 is non-null, returns its value; otherwise, 
evaluates and returns the value of expr2.

If the boolean expression tests for null, consider using ??.

    String playerName(String? name) => name ?? 'Guest';

#### Cascade notation
    ..  cascade 
    ?.. null-shorting cascade

    var paint = Paint()
        ..color = Colors.black
        ..strokeCap = StrokeCap.round;

    querySelector('#confirm') // Get an object
        ?..text='Confirm' // if not null cascade it.
         ..classes.add('important');

Be careful to construct your cascade on a function that returns an actual object. 
For example, the following code fails:

    var sb = StringBuffer();
    sb.write('foo')
    ..write('bar'); // Error: method 'write' isn't defined for 'void'.

The sb.write() call returns void, and you can’t construct a cascade on void.

Note: Strictly speaking, the “double dot” notation for cascades isn’t an operator. 
It’s just part of the Dart syntax.

#### Other operators
    ()  Function application    Represents a function call
    []  Subscript access        list[1]
    ?[] Conditional Subscript access    list?[1]
    .   Member access           foo.bar
    ?.  Conditional Member access   foo?.bar

# Day 6
## Suggested Subjects
1. Null Safety
## My Notes / Readings
### 1. [Sound null safety](https://dart.dev/null-safety)

When you opt into null safety, types in your code are non-nullable by default, meaning that variables can’t contain null unless you say they can. With null safety, your runtime null-dereference errors turn into edit-time analysis errors.

    // none of these can ever be null.
    var i = 42; // inferred to be a int.
    String name = getFileName();
    final b = Fob();

To indicate that a variable might have the value null, just add ? to its type declaration:

    int? aNullableInt = null;

#### Null safety principles

- Non-nullable by default. Unless you explicitly tell Dart that a variable can be null, 
  it’s considered non-nullable. This default was chosen after research found that 
  non-null was by far the most common choice in APIs.
- Incrementally adoptable. You choose what to migrate to null safety, and when. 
  You can migrate incrementally, mixing null-safe and non-null-safe code in the same project. 
  We provide tools to help you with the migration.
- Fully sound. Dart’s null safety is sound, which enables compiler optimizations. 
  If the type system determines that something isn’t null, then that thing can never be null. 
  Once you migrate your whole project and its dependencies to null safety, you reap the full benefits of
  soundness — not only fewer bugs, but smaller binaries and faster execution.

### 2. [Null safety codelab](https://dart.dev/codelabs/null-safety)

#### Nullable and non-nullable types

Exercise: Non-nullable types

    int a = 5; // not nullable

Exercise: Nullable types

    int? b = null; // nullable

Exercise: Nullable type parameters for generics

    List<String> aListOfStrings = ['a','b','c'];
    List<String>? aNullableListOfStrings;
    List<String?> aListOfNullableStrings = ['a', null, 'b'];

#### The null assertion operator (!)
If you’re sure that an expression with a nullable type isn’t null, you can use a null assertion operator (!) 
to make Dart treat it as non-nullable. By adding ! just after the expression, you tell Dart that 
the value won’t be null, and that it’s safe to assign it to a non-nullable variable.

    int? couldBeNullButIsnt = 1;
    int a = couldBeNullButIsnt; 

    List<int?> listThatCouldHoldNulls = [2, null, 4];
    int? b = listThatCouldHoldNulls.first;

    int? couldReturnNullButDoesnt() => -3;
    int c = couldReturnNullButDoesnt()!.abs(); // absolute value

#### Type promotion
With sound null safety, Dart’s flow analysis has been extended to take nullability into account. 
Nullable variables that can’t possibly contain null values are treated like non-nullable variables.
This behavior is called type promotion.

Exercise: Definite assignment

    void main() {
        String text;
        
        // if you comment this if-else block, the analyzer errors appear.
        // if you uncomment this if-else block, the analyzer errors disappear.
        if (DateTime.now().hour < 12) {
        text = "It's morning! Let's make aloo paratha!";
        } else {
        text = "It's afternoon! Let's make biryani!";
        }
        
        print(text);
        print(text.length);
    }


Exercise: Null checking

    if(a == null) {}

#### The late keyword

Sometimes variables — fields in a class, or top-level variables — should be non-nullable, 
but they can’t be assigned a value immediately. For cases like that, use the late keyword.

When you put `late` in front of a variable declaration, that tells Dart the following:

Don’t assign that variable a value yet.
You will assign it a value later.
You’ll make sure that the variable has a value before the variable is used.

If you declare a variable `late` and the variable is read before it’s assigned a value, an error is thrown.

Exercise: Using late

    class Meal {
        late String _description;
        
        set description(String desc) {
        _description = 'Meal description: $desc';
        }
        
        String get description => _description;
    }
    
    void main() {
        final myMeal = Meal();
        myMeal.description = 'Feijoada!';
        print(myMeal.description);
    }

Exercise: Late circular references

The late keyword is helpful for tricky patterns like circular references. 
The following code has two objects that need to maintain non-nullable references to each other. 
Try using the late keyword to fix this code.

Note that you don’t need to remove final. 
You can create late final variables: you set their values once, and after that they’re read-only.

    class Team {
        late final Coach coach;
    }
    
    class Coach {
        late final Team team;
    }
    
    void main() {
        final myTeam = Team();
        final myCoach = Coach();
        myTeam.coach = myCoach;
        myCoach.team = myTeam;
        
        print('All done!');
    }

Exercise: Late and lazy

    int _computeValue() {
        print('In _computeValue...');
        return 3;
    }
    
    class CachedValueProvider {
        late final _cache = _computeValue(); // if you use late keyword, _computeValue() calls when _cache proprty userd.
                                                // if dont use late keyword, _computeValue() calls when CachedValueProvider() called.
        int get value => _cache;
    }
    
    void main() {
        print('Calling constructor...');
        var provider = CachedValueProvider();
        print('Getting value...');
        print('The value is ${provider.value}!');
    }

Fun fact: After you add late to the declaration of _cache, if you move the _computeValue function into the CachedValueProvider class the code still works!
Initialization expressions for late fields can use instance methods in their initializers.