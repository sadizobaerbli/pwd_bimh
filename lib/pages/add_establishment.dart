import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';
import 'address.dart';
import 'civil.dart';
import 'em.dart';
import 'general_information.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddEstablishment extends StatelessWidget {
  AddEstablishment({Key? key}) : super(key: key);

  //--------------------variables-------------------
  //------------------------------------------------

  int _currentStep = 0;

  //--------------------functions-------------------
  //------------------------------------------------

  _steps() => [
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('G/I'),
      content: GeneralInformation(),
      isActive: _currentStep == 0,
      state: _stepState(0),
    ),
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('Address'),
      content: Address(),
      isActive: _currentStep == 1,
      state: _stepState(1),
    ),
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('Civil'),
      content: Civil(),
      isActive: _currentStep == 2,
      state: _stepState(2),
    ),
    Step(
      title: const SizedBox(height: 0, width: 0,),
      subtitle: const Text('E/M'),
      content: EM(),
      isActive: _currentStep == 3,
      state: _stepState(3),
    ),
  ];

  _stepState(int step) {
    if (_currentStep > step) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryBlue,
        title: Text("Create Establishment",
          style: extraBoldText(18.sp, color: white),
        ),
      ),
      body: StatefulBuilder(
        builder: (context, setState) {
          return SingleChildScrollView(
            child: SizedBox(
              height: 650.h,
              child: Stepper(
                elevation: 0,
                type: StepperType.horizontal,
                controlsBuilder: (BuildContext context,
                    ControlsDetails controls) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 28,
                          child: ElevatedButton(
                            onPressed: controls.onStepContinue,
                            child: Text('NEXT',
                              style: semiBoldText(12, color: white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        if (_currentStep != 0)
                          SizedBox(
                            height: 28,
                            child: ElevatedButton(
                              onPressed: controls.onStepCancel,
                              child: Text('BACK',
                                style: semiBoldText(12, color: white),
                              ),
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
      ),
    );
  }
}
