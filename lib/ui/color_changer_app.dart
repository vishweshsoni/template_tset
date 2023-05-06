import 'package:flutter/material.dart';
import 'package:template_tset/ui/home_page.dart';

/// A widget that builds the MaterialApp that wraps the HomePage widget.
/// It also maintains the state of whether the app is currently in dark mode
/// or not and passes this state to the HomePage widget as a parameter.
class ColorChangerApp extends StatefulWidget {
  /// Creates a new instance of the ColorChangerApp widget.
  ///
  /// Parameters:
  ///
  /// * `key` (optional): A Key that uniquely identifies this widget.
  const ColorChangerApp({Key? key}) : super(key: key);

  @override
  State<ColorChangerApp> createState() => _ColorChangerAppState();
}

class _ColorChangerAppState extends State<ColorChangerApp> {
  /// A boolean value that indicates whether the app is currently in dark mode.
  final _isDarkMode = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _isDarkMode.dispose();
    super.dispose();
  }

  /// Builds the ColorChangerApp widget.
  ///
  /// This method constructs and returns the MaterialApp widget that wraps
  /// the HomePage widget. It also updates the state of the widget in response
  /// to changes in the user's theme preference.
  ///
  /// Returns:
  ///
  /// A MaterialApp widget that wraps the HomePage widget.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isDarkMode,
      builder: (BuildContext context, bool value, Widget? child) {
        return MaterialApp(
          title: 'Color Changer Application',
          theme: value
              ? ThemeData.dark(useMaterial3: true)
              : ThemeData.light(useMaterial3: true),
          home: HomePage(
            isDarkMode: value,
            onThemeChanged: (value) {
              _isDarkMode.value = value;
            },
          ),
        );
      },
    );
  }
}
