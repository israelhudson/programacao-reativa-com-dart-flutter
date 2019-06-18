import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  //Mostra apenas dados nao repetidos
  b.stream.distinct().listen(print);
  b.sink.add("ola");
  b.sink.add("ola");
  b.sink.add("israel");
  b.sink.add("hudson");
  b.sink.add("foi");
}

