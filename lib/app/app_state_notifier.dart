import 'package:fl_boilerplate/app/app_state.dart';
import 'package:flutter/material.dart';

AppStateNotifier appNotifier = AppStateNotifier._private();


class AppStateNotifier implements ValueNotifier<AppStateVars> {

  AppStateNotifier._private() : super();

  AppStateController get _controller => appController;

  @override
  AppStateVars get value => _controller.value;

  @override
  void addListener(listener) {
    _controller.addListener(listener);
  }

  @override
  void dispose() => _controller.dispose();

  @override
  bool get hasListeners => _controller.hasListeners;

  @override
  void notifyListeners() {
    _controller.notifyListeners();
  }

  @override
  void removeListener(listener) {
    _controller.removeListener(listener);
  }

  @override
  set value(AppStateVars newStateVars) => throw "Unsupported operation";


}