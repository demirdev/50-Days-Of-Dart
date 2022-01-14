import 'dart:convert';


void main1(){
  // Dart numbers come in two flavors:

  // int : (64 bits) integers are numbers without a decimal point.

  // double : (64 bit) (double-precision) floating-point numbers.

  // Both int and double are subtypes of num.

  // Bitwise operators, such as >>, are defined in the int class

  // int examples
  var x = 1;
  var hex = 0xDEDDDDDD;
  var exponent = 8e5;
  print(exponent);

  // double examples
  var y = 1.1;
  var exponents = 1.42e5;

  print(exponents);

 
}



void main2(){  
  // num

  num x = 1; // x can have both int and double values
  x += 2.5;

  print(x);

  // integer literals are automatically converted to doubles when necessary:

  double z = 1; // Equivalent to double z = 1.0

  // String to int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toString();
  print(piAsString);
  assert(piAsString == '3.14159');

}


void main()3{  
  // bitwise shift, (<<,>>,>>>), complement(~),AND(&), OR(|), and XOR (^) operators.

  print(3<<1); // multiply by 2, result is 6
  print(3<<4); // multiply by 16 which is 2^4, result is 48
  print(7>>1); // division by 2, result is 3 (integer!)

  final val = 0x22; //     0010 0010
  final bitmask = 0x0f; // 0000 1111

  print(val & bitmask); 
  print(val & ~bitmask);   
  print(value >>> 4) // Unsigned shift right, 0x02

}

void main(){
  // booleans, true or false

  var fullName = '';
  assert(fullName.isEmpty);
  
  var hitPoints = 0;
  assert(hitPoints <= 0);
  
  var unicorn;
  assert(unicorn == null);
  
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN); 
}

// Strings
var s1 = 'this is a string';
var s2 = 'this is\' a string';
var s3 = "this is' a string";

var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, '
        'which is very handy.');
assert('That deserves all caps. '
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. '
        'STRING INTERPOLATION is very handy!');

var stringConcatenate = 'abc'
                        'def'
                        "ghj";
print(stringConcatenate);

// multi-line strings

var multiLine = '''a
b
c
d''';

// You can create a 'raw' string by prefixing it with r:
var rawString = r'In a raw string, not event \n gets special treatment.';


