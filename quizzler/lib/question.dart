class Question {
  String _text = '';
  bool _answer = false;

  Question(this._text, this._answer);

  String getText() {
    return this._text;
  }

  bool getAnswer() {
    return this._answer;
  }
}
