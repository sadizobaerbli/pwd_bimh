import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'form.dart';

class AddEstablishment extends StatefulWidget {
  const AddEstablishment({Key? key}) : super(key: key);

  @override
  State<AddEstablishment> createState() => _AddEstablishmentState();
}

class _AddEstablishmentState extends State<AddEstablishment> {
  //====================variables=================
  int _currentStep = 0;

  _steps() => [
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('G/I'),
      content: const AddressForm(),
      isActive: _currentStep == 0,

    ),
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('Address'),
      content: const AddressForm(),
      isActive: _currentStep == 1,

    ),
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('Civil'),
      content: const AddressForm(),
      isActive: _currentStep == 2,

    ),
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('E/M'),
      content: const AddressForm(),
      isActive: _currentStep == 3,

    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryBlue,
        title: Text("Create Establishment",
          style: extraBoldText(18, color: white),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stepper(
          elevation: 0,
          type: StepperType.horizontal,
          controlsBuilder: (BuildContext context, ControlsDetails controls) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: controls.onStepContinue,
                      child: const Text('NEXT'),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  if (_currentStep != 0)
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        onPressed: controls.onStepCancel,
                        child: const Text('BACK'),
                      ),
                    ),

                ],
              ),
            );
          },
          onStepTapped: (step) => setState(() => _currentStep = step),
          onStepContinue: () {
            setState(() {
              if (_currentStep < _steps().length - 1) {
                _currentStep += 1;
              } else {
                _currentStep = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_currentStep > 0) {
                _currentStep -= 1;
              } else {
                _currentStep = 0;
              }
            });
          },
          currentStep: _currentStep,
          steps: _steps(),
        ),

      ),
    );
  }
}
