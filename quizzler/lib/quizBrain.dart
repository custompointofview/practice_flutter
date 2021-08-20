import 'package:flutter/material.dart';

import 'question.dart';

class QuizBrain {
  int _questionNum = 0;
  bool _finished = false;
  ScoreKeeper _score = ScoreKeeper();

  List<Question> _bank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNum < _bank.length - 1) {
      _questionNum++;
    } else {
      _finished = true;
    }
  }

  String getQuestionText() {
    return _bank.elementAt(_questionNum).getText();
  }

  bool getQuestionAnswer() {
    return _bank.elementAt(_questionNum).getAnswer();
  }

  List<Icon> getScoreBank() {
    return _score.getBank();
  }

  String getFinalScore() {
    return _score.getScore();
  }

  void markAsGood() {
    _score.markAsGood();
  }

  void markAsBad() {
    _score.markAsBad();
  }

  bool isFinished() {
    return _finished;
  }

  void restart() {
    _questionNum = 0;
    _score.restart();
    _finished = false;
  }
}

class ScoreKeeper {
  int _guds = 0;
  int _bads = 0;

  static final gudAnswer = Icon(
    Icons.check_circle,
    color: Colors.green,
  );
  static final badAnswer = Icon(
    Icons.close,
    color: Colors.red,
  );
  List<Icon> _bank = [];

  List<Icon> getBank() {
    return _bank;
  }

  void markAsGood() {
    _bank.add(gudAnswer);
    _guds++;
  }

  void markAsBad() {
    _bank.add(badAnswer);
    _bads++;
  }

  void restart() {
    _bank.clear();
    _guds = 0;
    _bads = 0;
  }

  String getScore() {
    int total = _guds + _bads;
    return _guds.toString() + '/' + total.toString();
  }
}
