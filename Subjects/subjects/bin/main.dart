import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  b.stream.asyncMap(
    (dados) => Future.delayed(Duration(seconds: 1), 
    () => int.tryParse(dados))).listen(print);

    b.sink.add("1");
    b.sink.add("5");
    b.sink.add("6");
}

