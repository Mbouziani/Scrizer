import 'package:flutter/material.dart';

extension RouteExtension on BuildContext {
  // ─────────────────────── Navigation by Route Name ───────────────────────

  /// Pushes a new route onto the navigator stack using a named route.
  Future<void> pushNamed(String path) async {
    await Navigator.pushNamed(this, path);
  }

  /// Pushes a named route and removes all previous routes.
  Future<void> pushNamedAndRemoveUntil(String path) async {
    await Navigator.pushNamedAndRemoveUntil(this, path, (route) => false);
  }

  /// Replaces the current route with a named route.
  Future<void> pushReplacementNamed(String path) async {
    await Navigator.pushReplacementNamed(this, path);
  }

  /// Pops routes until reaching the one with the given name.
  Future<void> popUntil(String path) async {
    Navigator.popUntil(this, ModalRoute.withName(path));
  }

  // ───────────────────────── Navigation by Widget ─────────────────────────

  /// Pushes a new widget screen onto the navigator stack.
  Future<void> push(Widget page) async {
    await Navigator.push(this, MaterialPageRoute(builder: (_) => page));
  }

  /// Pushes a new widget and removes all previous screens.
  Future<void> pushAndRemoveUntil(Widget page) async {
    await Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (_) => page),
      (route) => false,
    );
  }

  /// Replaces the current widget with a new one.
  Future<void> pushReplacement(Widget page) async {
    await Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  // ───────────────────────────── Pop Helpers ──────────────────────────────

  /// Pops the current screen from the navigator stack.
  void get pop => Navigator.pop(this);

  /// Safely pops the current screen if possible.
  Future<void> maybePop() async {
    await Navigator.maybePop(this);
  }

  /// Pops until a custom condition is met.
  void popUntilPredicate(RoutePredicate predicate) {
    Navigator.popUntil(this, predicate);
  }

  /// Pops the current screen and returns a result.
  void popWithResult<T>([T? result]) {
    Navigator.pop<T>(this, result);
  }

  // ─────────────────────── Custom Transition Support ──────────────────────

  /// Pushes a custom [PageRoute], like one with animation or transition.
  Future<void> pushCustomRoute(PageRouteBuilder route) async {
    await Navigator.push(this, route);
  }
}
