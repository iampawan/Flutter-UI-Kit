import 'dart:async';

class CreditCardBloc {
  final ccInputController = StreamController<String>();
  final expInputController = StreamController<String>();
  final cvvInputController = StreamController<String>();
  final nameInputController = StreamController<String>();

  Sink<String> get ccInputSink => ccInputController.sink;
  Sink<String> get expInputSink => expInputController.sink;
  Sink<String> get cvvInputSink => cvvInputController.sink;
  Sink<String> get nameInputSink => nameInputController.sink;

  final ccOutputController = StreamController<String>();
  final expOutputController = StreamController<String>();
  final cvvOutputController = StreamController<String>();
  final nameOutputController = StreamController<String>();

  Stream<String> get ccOutputStream => ccOutputController.stream;
  Stream<String> get expOutputStream => expOutputController.stream;
  Stream<String> get cvvOutputStream => cvvOutputController.stream;
  Stream<String> get nameOutputStream => nameOutputController.stream;

  CreditCardBloc() {
    ccInputController.stream.listen(onCCInput);
    expInputController.stream.listen(onExpInput);
    cvvInputController.stream.listen(onCvvInput);
    nameInputController.stream.listen(onNameInput);
  }

  onCCInput(String input) {
    ccOutputController.add(input.toString());
  }

  onExpInput(String input) {
    expOutputController.add(input);
  }

  onCvvInput(String input) {
    cvvOutputController.add(input);
  }

  onNameInput(String input) {
    nameOutputController.add(input);
  }

  void ccFormat(String s) {
    print(s);
    ccInputSink.add(s);
  }

  void dispose() {
    ccInputController?.close();
    cvvInputController?.close();
    expInputController?.close();
    nameInputController?.close();
  }
}
