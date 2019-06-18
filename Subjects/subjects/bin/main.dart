import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  //Delay de 2 segundos para disparar o evento
  Observable.timer(10, Duration(seconds: 2)).listen(print);
}

