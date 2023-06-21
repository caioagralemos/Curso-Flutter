void main() {
  // while
  int i = 1;
  bool sim = true;
  while (sim) {
    print('sim. 👍');
    i++;
    if (i >= 10) {
      print('não. 👍');
      sim = false;
    }
  }
  ;

  do {
    print(i);
    i++;
  } while (i < 20);
}
