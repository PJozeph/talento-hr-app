import 'package:flutter/material.dart';
import 'package:talento/modal/employee.dart';
import 'package:talento/widget/add-dloating-button.dart';
import 'package:talento/widget/empty-employees-list.dart';

class EmployeesScreen extends StatelessWidget {
  EmployeesScreen({super.key});

  final List<Employee> employees =List.empty();

  @override
  Widget build(BuildContext context) {
    Widget content = Padding(
      padding: const EdgeInsets.all(10.0),
      child: EmptyEmployeesList(),
    );

    if (employees.isNotEmpty) {
      content = ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return ListTile(
            title: Text(employee.name),
            subtitle: Text(employee.email),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Employees',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
      body: content,
      floatingActionButton: AddFloatingButton(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
