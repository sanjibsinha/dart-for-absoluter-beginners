void main(List<String> args) {
  var i = 5;

  var name = 'x';

  while (i >= 0) {
    print(name);
    --i;
    if (i == 2) {
      name = 'y';
    }
    print(name);
  }
}
