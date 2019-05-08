import 'package:rxdart/rxdart.dart';

main() {

  //pubSubject();  
  behbSubject();
}

behbSubject(){
  BehaviorSubject b = new BehaviorSubject();
  b.sink.add(15);
  b.stream.listen(print);
  print(b.value);
}

pubSubject(){
  PublishSubject p = new PublishSubject();

  p.stream.listen(print);
  p.sink.add(1);
  p.sink.add(2);
  p.sink.add(3);
}