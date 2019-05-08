import 'package:rxdart/rxdart.dart';

main() {

  //pubSubject();  
  //behSubject();
  replaySubject();
}

replaySubject(){//Recupera todo o historico de dados adicionado
  ReplaySubject r = new ReplaySubject();
  r.sink.add(10);
  r.sink.add(15);
  r.sink.add(20);

  r.stream.listen((data) => print("print $data"));
  print("values: ${r.values}");
}

behSubject(){//pega o ultimo dado adicionado
  BehaviorSubject b = new BehaviorSubject();
  b.sink.add(15);
  b.stream.listen(print);
  print(b.value);
}

pubSubject(){//adciona dado no buffer
  PublishSubject p = new PublishSubject();

  p.stream.listen(print);
  p.sink.add(1);
  p.sink.add(2);
  p.sink.add(3);
}