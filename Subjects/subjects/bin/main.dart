import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  BehaviorSubject<String> c = new BehaviorSubject<String>();
  
  b.stream.listen(c.sink.add);

  b.sink.add("Olá");

  b.stream.listen(print);
  c.stream.listen(print);
}

