import 'package:flutter/material.dart';
import 'package:show_confirm_modal/show_confirm_modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showConfirm(
                context: context,
                onCancel: () => print("Cancel"),
                onConfirm: () => print("Confirm"),
              ),
              child: const Text('Show Confirm'),
            ),
            ElevatedButton(
              onPressed: () => showConfirm(
                context: context,
                title: "Custom Title",
                content: "Custom Content",
                cancelText: "Custom Cancel",
                confirmText: "Custom Confirm",
                onCancel: () => print("Cancel"),
                onConfirm: () => print("Confirm"),
              ),
              child: const Text('Show Confirm (full options)'),
            )
          ],
        ),
      ),
    );
  }
}
