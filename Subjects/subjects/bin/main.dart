import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  //Especificando intervalor para mostrar dados
  Observable
  .range(1, 4)
  .switchMap((item) => Observable
  .timer(item, Duration(seconds: 1)))
  .listen(print);
}

