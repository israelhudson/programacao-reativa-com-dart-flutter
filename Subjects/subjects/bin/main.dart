import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  //Mostra apenas dados nao repetidos
  b.stream.debounce(Duration(milliseconds: 1)).listen(print);
  b.sink.add("10");
  b.sink.add("50");
  b.sink.add("900");
}

