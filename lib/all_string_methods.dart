String getVariousSymbols() {
  var miscSymbols = 'Various symbols: '
      '\u{266A}, \u{266B}, \u{266C}, \u{266D}';
  return miscSymbols;
  // Various symbols: ♪, ♫, ♬, ♭
}

String thinkStringAsAList() {
  var name = 'sanjib';
  return name[2]; // n
}

String getASubstringFromAString(int startIndex, int lastIndex) {
  var name = 'sanjib';
  return name.substring(startIndex, lastIndex);
  // as startIndex=2, and lastIndex=5
  // the output is
  // nji
  // the substring starts from n and ends at i
}

String makeUpperCaseAndLowerCase() {
  var lowerToUpper = 'john';
  var upperToLower = 'JOHN';
  return lowerToUpper.toUpperCase() + ' ' + upperToLower.toLowerCase();
  // JOHN john
}

String testStringEmptyOrNot() {
  var nameNotEmpty = 'John';
  var nameEmpty = '';
  var isEmpty =
      nameNotEmpty.isEmpty ? 'String is Empty' : 'String is not Empty';
  var isNotEmpty =
      nameEmpty.isNotEmpty ? 'String is not Empty' : 'String is Empty';
  return isEmpty + '\n' + isNotEmpty;
  /**
   * String is not Empty
   * String is Empty
   */
}
