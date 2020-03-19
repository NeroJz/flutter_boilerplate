import 'package:fl_boilerplate/app/app_state.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({@required this.child, Key key}) : super(key: key);

  final Widget child;

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  AppStateVars value;

  @override
  void initState() {
    value = appController.value;

    appController.addListener(_onStateChange);

    super.initState();
  }

  @override
  void dispose() {
    appController.removeListener(_onStateChange);
    super.dispose();
  }

  void _onStateChange() {
    setState(() {
      value = appController.value;

    });
  }

  @override
  Widget build(BuildContext context) {
    return AppState(
      child: widget.child,
      value: value,
    );
  }
}

class AppState extends InheritedModel<AppStateAspect> {
  AppState({
    @required Widget child,
    @required this.value,
  }) : super(child: child);

  // get the current state of the app
  final AppStateVars value;

  static AppState of(BuildContext context, {AppStateAspect aspect}) {
    return context.inheritFromWidgetOfExactType(AppState, aspect: aspect);
  }


  @override
  bool updateShouldNotify(AppState oldWidget) {
    return value != oldWidget.value;
  }

  @override
  bool updateShouldNotifyDependent(
      AppState oldWidget, Set<AppStateAspect> dependencies) {
    if (dependencies.contains(AppStateAspect.lang) &&
        (value.lang != oldWidget.value.lang)) {
      return true;
    }

    if(dependencies.contains(AppStateAspect.configure) &&
        (value.langMap != oldWidget.value.langMap)) {
      return true;
    }

    return false;
  }
}

enum AppStateAspect {
  // the language of the app
  lang,
  configure,
}
