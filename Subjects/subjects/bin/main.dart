import 'package:rxdart/rxdart.dart';

main() {

  pubSubject();  

}

pubSubject(){
  PublishSubject p = new PublishSubject();

  p.stream.listen(print);
  p.sink.add(1);
  p.sink.add(2);
  p.sink.add(3);
}