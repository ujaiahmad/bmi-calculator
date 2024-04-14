import 'dart:math';

class CalculateBMI {
  static double _height = 0;
  static double _weight = 0;
  static String _gender = 'Male';
  static int _age = 25;
  late double _bmi;
  //Note for children bmi:
  //Underweight < 18.4 < above is healthy weight
  //2
  List weighClassForChildren = [
    'Class: Underweight.\n\n Category: Teens/children. Your children might have malnutrition, vitamin deficiencies, anemia (lowered ability to carry blood vessels).',
    'Class: Healthy weight.\n\n Teens/children. congratulations!! your children should maintain in the healthy BMI to prevent disease',
    'Class: At At risk of overweight.\n\n Teens/children. spend more time exercising and monitoring the diet of your child',
    'Class: Overweight.\n\n Teens/children. Having a high BMI-for-age percentile is associated with clinical risk factors for cardiovascular disease, including high cholesterol and high blood pressure'
  ];

  List weighClassForAdults = [
    'Class: Underweight.\n\n Category: Adult. Consult your doctor to diagnose potential risk such as malnutrition, vitamin deficiencies, anemia, Osteoporosis',
    'Class: Normal.\n\n Category: Adult. Congratulations!! your BMI is normal. Exercise regularly with heatlthy diet to maintain your health.',
    'Class: Overweight.\n\nCategory: Adult. You should eat a healthy, reduced-calorie diet and exercise more regularly.',
    'Class: Obese.\n\nCategory: Adult. You have a high risk of developing many potentially serious health conditions; diabetes, high blood pressure, high cholesterol and heart disease'
  ];
  // CalculateBMI(this._height, this._weight);

  // CalculateBMI(this.height, this.weight);
  void getHeight(double heightInput) {
    _height = heightInput;
    // print('function getheight called: $_height');
  }

  void getWeight(double weightInput) {
    _weight = weightInput;
    // print('function getweight is called: $_weight');
  }

  void setGender(String gender) {
    _gender = gender;
    // print('set gender function is called');
  }

  void setAge(int age) {
    _age = age;
  }

  String displayGender() {
    return _gender;
  }

  // List<double> person = [_height, _weight];

  double displayWeight() {
    return _weight;
  }

  double displayHeight() {
    return _height;
  }

  String getBMI() {
    // print('getmbi is called, height is $_height, weight is: $_weight');
    double heightPowerof2 = pow((_height / 100), 2).toDouble();
    double result = (_weight / heightPowerof2);
    _bmi = result;
    return result.toStringAsFixed(1);
  }

  String getResults() {
    if (_age > 20) {
      if (_bmi > 18.5 && _bmi < 25) {
        return weighClassForAdults[1];
      } else if (_bmi <= 18.5) {
        return weighClassForAdults[0];
      } else if (_bmi >= 25 && _bmi <= 30) {
        return weighClassForAdults[2];
      } else {
        return weighClassForAdults[3];
      }
    } else {
      if (_bmi > 18.5 && _bmi < 25) {
        return weighClassForChildren[1];
      } else if (_bmi <= 18.5) {
        return weighClassForChildren[0];
      } else if (_bmi >= 25 && _bmi <= 30) {
        return weighClassForChildren[2];
      } else {
        return weighClassForChildren[3];
      }
    }
    return 'oi';
  }
}
