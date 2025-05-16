import 'package:flutter/material.dart';

class EmptyEmployeesList extends StatelessWidget {
  const EmptyEmployeesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'EMPTY',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            'You haven\'t added any employees and departments yet.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // buttin with icon
          ElevatedButton.icon(
            onPressed: () {
              // Navigate to the add employee screen
              //Navigator.pushNamed(context, '/add-employee');
            },
            icon: const Icon(Icons.add),
            label: const Text('Add new'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
