import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  
  b.stream.map((valor) => "$valor Alguma outra coisa").listen(print);
  b.sink.add("textao");
  b.sink.add("textinho");
}

