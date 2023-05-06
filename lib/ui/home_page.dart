import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:template_tset/logic/background_color_logic.dart';

/// A page that displays a message and changes its background color
/// when tapped.
class HomePage extends StatefulWidget {
  /// Indicates whether the current theme is dark or light.
  final bool isDarkMode;

  /// Callback function that is triggered when the theme changes.
  final ValueChanged<bool> onThemeChanged;

  /// Creates a new instance of the HomePage widget.
  ///
  /// Parameters:
  ///
  /// * `key` (optional): A Key that uniquely identifies this widget.
  /// * `isDarkMode`: A boolean value that indicates whether the app is currently in dark mode.
  /// * `onThemeChanged`: A callback function that is called when the user changes the app's theme. It takes a boolean parameter that indicates whether the app should switch to dark mode.
  ///
  const HomePage({
    Key? key,
    required this.isDarkMode,
    required this.onThemeChanged,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;

  /// Changes the background color of the page to a random color.
  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = BackgroundColorLogic.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('homePageGestureDetector'),
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Hello there',
                style: TextStyle(fontSize: 32),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Dark Mode',
                    style: TextStyle(fontSize: 18),
                  ),
                  Switch(
                    value: widget.isDarkMode,
                    onChanged: widget.onThemeChanged,
                  ),
                  const Text(
                    'Light Mode',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
