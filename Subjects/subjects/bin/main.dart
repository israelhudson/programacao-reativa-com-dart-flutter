import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  Observable observavel = Observable.just("a");
  observavel.listen(print);

  BehaviorSubject b = new BehaviorSubject();

  b.sink.add(15);

  StreamSubscription subscription = b.listen(print);
  subscription.onData((data) => print("Mudei o método $data"));
  
}

