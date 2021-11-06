import 'dart:async';

void main(){
  Stream<int> myStreamFunction() async*{
    for(int i=0; i<5; i++){
      await Future.delayed(Duration(seconds: 3));
      yield i+1;
    }
  }

  myStreamFunction().listen((event) {
    print(event);
  });
}
