import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier
{
  int i=0;

  void increment()
  {
    i++;
    notifyListeners();
  }

  void decrement()
  {
    i--;
    notifyListeners();
  }

  void times2()
  {
    i*=2;
    notifyListeners();
  }

  void times3()
  {
    i*=3;
    notifyListeners();

  }

  void times4()
  {
    i*=4;
    notifyListeners();

  }
}