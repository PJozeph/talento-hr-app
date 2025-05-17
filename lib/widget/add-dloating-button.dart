import 'package:flutter/material.dart';

class AddFloatingButton extends StatefulWidget {
  const AddFloatingButton({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddFloatingButtonState();
  }
}

class _AddFloatingButtonState extends State<AddFloatingButton> {
  bool _showMenu = false;

  void _toggleMenu() {
    setState(() {
      _showMenu = !_showMenu;
    });
  }

  void _hideMenu() {
    setState(() {
      _showMenu = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        if (_showMenu)
          Padding(
            padding: const EdgeInsets.only(bottom: 70, right: 8),
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              child: SizedBox(
                width: 200,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.apartment, color: Colors.black87),
                      title: Text('Department'),
                      onTap: () {
                        _hideMenu();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person_add, color: Colors.black87),
                      title: Text('Employees'),
                      onTap: () {
                        _hideMenu();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        FloatingActionButton(
          onPressed: _toggleMenu,
          child: Icon(_showMenu ? Icons.close : Icons.add),
        ),
      ],
    );
  }
}
