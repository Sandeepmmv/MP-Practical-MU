//pract 5 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primaryColor: Colors.deepPurple,
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        headlineMedium: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          color: Colors.grey[800],
        ),
        labelLarge: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.deepPurple,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), toolbarTextStyle: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ).bodyMedium, titleTextStyle: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ).titleLarge,
      ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
    );

    return MaterialApp(
      title: 'Stylish Theming Example',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stylish Theming Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Stylish App!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'Discover a world of elegant theming and styling.',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Add onPressed logic here
              },
              child: Text('Get Started', style: Theme.of(context).textTheme.labelLarge),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add onPressed logic here
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
