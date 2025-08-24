import 'answer.dart';

class QuestionModel{
  final String question;
  final List<AnswerModel> options;

  QuestionModel({
   required this.question,
   required this.options
});
  void randomize(){
    options.shuffle();
  }
}