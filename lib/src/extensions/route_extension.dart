import 'package:flutter/material.dart';

extension RouteExtension on BuildContext {
  //---------------------------- Navigate Functions---------------------------

  Future<void> pushNamed(String path) async {
    await Navigator.pushNamed(this, path);
  }

  Future<void> pushNamedAndRemoveUntil(String path) async {
    await Navigator.pushNamedAndRemoveUntil(this, path, (route) => false);
  }

  Future<void> pushReplacementNamed(String path) async {
    await Navigator.pushReplacementNamed(this, path);
  }

  Future<void> popUntil(String path) async {
    Navigator.popUntil(this, ModalRoute.withName(path));
  }

  Future<void> push(Widget route) async {
    await Navigator.push(this, MaterialPageRoute(builder: (context) => route));
  }

  Future<void> pushAndRemoveUntil(Widget route) async {
    await Navigator.pushAndRemoveUntil(this, MaterialPageRoute(builder: (context) => route), (route) => false);
  }

  Future<void> pushReplacement(Widget route) async {
    await Navigator.pushReplacement(this, MaterialPageRoute(builder: (context) => route));
  }

  void get pop => Navigator.pop(this);
}
