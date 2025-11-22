import 'package:fitness_app/app/design/design_tokens.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DT.bg,
      appBar: AppBar(
        backgroundColor: DT.bg,
        elevation: 0,
        toolbarHeight: 100,
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: DT.bgWhite, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: DT.shadowMedium,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/18231436?v=4',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: DT.iconLightGrey.withValues(alpha: 0.3),
                    child: const Icon(Icons.person, color: DT.iconGrey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
