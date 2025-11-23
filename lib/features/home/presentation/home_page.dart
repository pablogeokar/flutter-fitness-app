import 'package:fitness_app/app/design/design_tokens.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            SizedBox(width: DT.s4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Olá, Pablo",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: DT.textPrimary,
                    ),
                  ),
                  const SizedBox(height: DT.s1),
                  Text(
                    'Hoje ${DateFormat('d MMM.').format(DateTime.now())}',
                    style: TextStyle(fontSize: 14, color: DT.textSecondary),
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: DT.bgWhite,
                borderRadius: BorderRadius.circular(DT.rCardSmall),
                boxShadow: [
                  BoxShadow(
                    color: DT.shadowLight,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(Icons.search, color: DT.iconGrey, size: 20),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Daily challenge card
            _DailyChallengeCard(),
            // Weekly List Component
            //_WeeklyListComponent(),
            // Your PLan Section
            // PLan Cards
            // Social Media Card
          ],
        ),
      ),
    );
  }
}

class _DailyChallengeCard extends StatelessWidget {
  const _DailyChallengeCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DT.s5),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [DT.challengeGradientStart, DT.challengeGradientEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(DT.rCard),
        boxShadow: [
          BoxShadow(
            color: DT.shadowLight,
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Daily challenge',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: DT.textPrimary,
                  ),
                ),
                const SizedBox(height: DT.s2),
                const Text(
                  'Do your plan before 09:00 AM',
                  style: TextStyle(fontSize: 14, color: DT.textSecondary),
                ),
                const SizedBox(height: DT.s4),
                Row(
                  children: [
                    _UserChip(
                      imageUrl:
                          'https://avatars.githubusercontent.com/u/18231436?v=4',
                    ),
                    Transform.translate(
                      offset: Offset(-8, 0),
                      child: _UserChip(
                        imageUrl:
                            'https://avatars.githubusercontent.com/u/18231436?v=4',
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-16, 0),
                      child: _UserChip(
                        imageUrl:
                            'https://avatars.githubusercontent.com/u/18231436?v=4',
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-24, 0),
                      child: _UserChip(
                        imageUrl:
                            'https://avatars.githubusercontent.com/u/18231436?v=4',
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-32, 0),
                      child: _UserChip(
                        imageUrl:
                            'https://avatars.githubusercontent.com/u/18231436?v=4',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UserChip extends StatelessWidget {
  final String imageUrl;
  const _UserChip({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: DT.bgWhite, width: 2),
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            color: DT.iconLightGrey.withValues(alpha: 0.3),
            child: const Icon(Icons.person, size: 16, color: DT.iconGrey),
          ),
        ),
      ),
    );
  }
}
