import 'package:flutter/material.dart';

class DropDownSelectionWidget extends StatefulWidget {
  final String title;
  final List<String> items;
  final Function(String) onChanged;

  const DropDownSelectionWidget({
    super.key,
    required this.title,
    required this.items,
    required this.onChanged,
  });

  @override
  _DropDownSelectionWidgetState createState() =>
      _DropDownSelectionWidgetState();
}

class _DropDownSelectionWidgetState extends State<DropDownSelectionWidget> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 19,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: _selectedItem,
          items:
              widget.items
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                      child: SizedBox(width: 200, child: Text(item)),
                    ),
                  )
                  .toList(),
          onChanged: (value) {
            setState(() {
              _selectedItem = value;
            });
            widget.onChanged(value!);
          },
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
        ),
      ],
    );
  }
}
