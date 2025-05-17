import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talento/widget/drop-down-selection-widget.dart';
import 'package:talento/widget/text-input-widget.dart';

class NewEmployeeScreen extends StatefulWidget {
  const NewEmployeeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewEmployeeScreenState();
  }
}

class _NewEmployeeScreenState extends State<NewEmployeeScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _position = '';
  String _employeeId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Employee',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextInputWidget(
                label: 'Full Name',
                hint: 'Enter your name',
                initialValue: _name,
                onChanged: (value) {
                  _name = value;
                },
              ),
              // Spacer
              SizedBox(height: 15),
              TextInputWidget(
                label: 'Position',
                hint: 'Position',
                initialValue: _position,
                onChanged: (value) {
                  _position = value;
                },
              ),
              SizedBox(height: 15),
              DropDownSelectionWidget(
                title: 'Employee Status',
                items: ['Active', 'Inactive'],
                onChanged: (value) {},
              ),
              SizedBox(height: 15),
              DropDownSelectionWidget(
                title: 'Gender',
                items: ["Male", "Female", "Other"],
                onChanged: (value) {
                  // Handle department selection
                },
              ),
              SizedBox(height: 15),
              DropDownSelectionWidget(
                title: 'Department',
                items: ['HR', 'IT', 'Finance', 'Marketing'],
                onChanged: (value) {
                  // Handle department selection
                },
              ),
              SizedBox(height: 15),
              TextInputWidget(
                label: 'Employee ID',
                hint: 'Employee ID',
                initialValue: _employeeId,
                onChanged: (value) {
                  _employeeId = value;
                },
              ),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // cancel button
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      textStyle: Theme.of(context).textTheme.bodyLarge
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),

                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Save the employee data
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
