import 'dart:async';

void main(){
  StreamController streamController=StreamController();

  void streamYayin() async{
    for(int i=0; i<5; i++){
      await Future.delayed(Duration(seconds: 1));
      streamController.sink.add(i);
    }
  }
  streamYayin();

  streamController.stream.listen(
          (event) {
            print(event);
          });
}
