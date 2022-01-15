void main() {
  // runes
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

  // symbols, I dont understand.

  Map map = Map();
  map[#hw] = 'Hello world!';

  print(#hw);
}
