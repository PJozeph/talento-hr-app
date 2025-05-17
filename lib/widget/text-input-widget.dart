import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final String label;
  final String hint;
  final String initialValue;
  final bool isPassword;
  final Function(String) onChanged;

  const TextInputWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.initialValue,
    this.isPassword = false,
    required this.onChanged,
  });

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 19,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _controller,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                12,
              ), // Set your desired radius
              borderSide: BorderSide.none, // No visible border line
            ),
            filled: true,
            fillColor: Color(0xFFE5E5E5),
          ),
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
