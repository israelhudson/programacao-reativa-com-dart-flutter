import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  //Especificando intervalor para mostrar dados
  Observable.range(1, 10).listen(print);
}

