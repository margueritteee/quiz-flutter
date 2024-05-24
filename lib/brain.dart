import 'package:quiz/question.dart';

class QuizBrain {
  int _questionNumber=0;
  List<Question> groupe=[
    Question(q: 'maggie is pretty',a: true),
    Question(q: 'maggie worst player in valorant',a: false),
    Question(q: '1+1=3',a: false),
  ];
  void nextQuestion(){
    if(_questionNumber<(groupe.length)-1) {
      _questionNumber++;
    }
  }
  String getQuestionText () {
    return groupe[_questionNumber].questionText;
  }
  bool? getQuestionAnswer(){
    return groupe[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= groupe.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
