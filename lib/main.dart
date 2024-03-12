import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    int currentYear = currentDate.year;
    int currentMonth = currentDate.month;
    bool isSpecialDate = currentYear == 2024 &&
        (currentMonth == DateTime.october || currentMonth == DateTime.november);

    return MaterialApp(
      title: 'Haaland Happiness',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isSpecialDate ? const HappyHaalandPage() : const SadHaalandPage(),
    );
  }
}

class SadHaalandPage extends StatelessWidget {
  const SadHaalandPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Happy Haaland'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              const Text(
                'Can you make Haaland happy?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Image.asset(
                'assets/img1.png',
              ),
              const SizedBox(height: 30),
              Image.asset(
                'assets/img2.png',
              ),
              const SizedBox(height: 26),
              const Text(
                'Haaland looks very sad, how can you help him to be happy?',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class HappyHaalandPage extends StatelessWidget {
  const HappyHaalandPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Congratulations!'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img3.png',
              ),
              const SizedBox(height: 30),
              const Text(
                'Oh hooo!! You have made Haaland happy so he decides to \ngift you the flag 🎉',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text(
                'Here is your gift: IECTF{M!S6_05A56_n4AW}',
                style: TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
