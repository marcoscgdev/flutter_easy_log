import 'package:flutter/material.dart';
import 'package:flutter_easy_log/flutter_easy_log.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Easy Log config
  Log.debugOnly = true; // Default true
  Log.showDate = true; // Default false

  // Optional, log all app exceptions
  FlutterError.onError = (errorDetails) {
    Log.e(errorDetails.exception);
  };

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    Log.d('My debug log');
    Log.e('My error log');
    Log.i('My info log');
    Log.v('My verbose log');
    Log.w('My warning log');
    Log.wtf('My WTF log');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Easy Log example app'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ElevatedButton(
              onPressed: () {
                Log.i(tag: 'First button', 'Button clicked!');
              },
              child: const Text('Press me'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                throw Exception('My exception');
              },
              child: const Text('Throw an exception'),
            ),
          ],
        ),
      ),
    );
  }
}
