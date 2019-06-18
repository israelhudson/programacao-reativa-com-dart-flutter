import 'dart:async';

import 'package:rxdart/rxdart.dart';

main() {

  BehaviorSubject<String> b = new BehaviorSubject<String>();
  //Faz um filtro em que somente os nomes com o tamanho maior que 3
  //serâo exibidos  
  b.stream.where((valor) => valor.length > 3).listen(print);
  b.sink.add("Israel");
  b.sink.add("AA");
}

