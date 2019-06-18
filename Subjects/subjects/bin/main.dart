import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  //Mostra apenas 3 dados iniciais da lista
  b.stream.take(3).listen(print);
  b.sink.add("1");
  b.sink.add("2");
  b.sink.add("3");
  b.sink.add("4");
  b.sink.add("5");
}

