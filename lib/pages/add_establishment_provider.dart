import 'package:flutter/material.dart';

class AddEstablishmentProvider with ChangeNotifier{
  int _stepperCurrentIndex = 0;

  get stepperCurrentIndex => _stepperCurrentIndex;

  incrementStepperCurrentIndex(){
    _stepperCurrentIndex = _stepperCurrentIndex + 1;
    notifyListeners();
  }

  decrementStepperCurrentIndex(){
    _stepperCurrentIndex = _stepperCurrentIndex - 1;
    notifyListeners();
  }

}