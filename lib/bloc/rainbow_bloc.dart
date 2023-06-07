import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent{red,orange,yellow,green,blue,indigo}

class RainbowBloc{
  Color color = Colors.red;

  final eventController = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => eventController.sink;

  final outputStreamController = StreamController<Color>();
  Stream<Color> get outputStream => outputStreamController.stream;

  void mapEventToState(ColorEvent event){
    switch(event){
      case ColorEvent.red:
        color = Colors.red;
        break;
      case ColorEvent.orange:
        color = Colors.orange;
        break;
      case ColorEvent.yellow:
        color = Colors.yellow;
        break;
      case ColorEvent.green:
        color = Colors.green;
        break;
      case ColorEvent.blue:
        color = Colors.blue;
        break;
      default:
        color = Colors.indigo;
        break;
    }
    outputStreamController.sink.add(color);
  }
  RainbowBloc(){
    eventController.stream.listen(mapEventToState);
  }

  void dispose(){
    eventController.close();
    outputStreamController.close();
  }
}
