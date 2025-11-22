import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavScaffold extends StatelessWidget {
  final StatefulNavigationShell shell;
  const BottomNavScaffold({super.key, required this.shell});

  void _onTap(int index) =>
      shell.goBranch(index, initialLocation: index == shell.currentIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell,
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(child: Text('Home'), onTap: () => _onTap(0)),
              GestureDetector(child: Text('Session'), onTap: () => _onTap(1)),
              GestureDetector(child: Text('Profile'), onTap: () => _onTap(2)),
            ],
          ),
        ),
      ),
    );
  }
}
