import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:show_confirm_modal/show_confirm_modal.dart';

void main() {
  testWidgets('Show confirm modal Controle default values',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () => showConfirm(
                context: context,
                onCancel: () => print("Cancel"),
                onConfirm: () => print("Confirm"),
              ),
              child: const Text('Show Confirm'),
            );
          }),
        ),
      ),
    );

    // On click show confirm
    await tester.tap(find.byType(ElevatedButton));

    // wait modal show
    await tester.pumpAndSettle();

    // Check default values
    expect(
      find.text('Confirm'),
      findsWidgets,
    );

    expect(
      find.text('Are you sure?'),
      findsWidgets,
    );

    expect(
      find.text('Cancel'),
      findsWidgets,
    );

    expect(
      find.text('Confirm'),
      findsWidgets,
    );
  });

  testWidgets('Show confirm modal on Cancel', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () => showConfirm(
                context: context,
                title: "Confirm Remove",
                content: "Are you sure you want to remove this video?",
                cancelText: "Cancel",
                confirmText: "Remove",
                onCancel: () => print("Cancel"),
                onConfirm: () => print("Confirm"),
              ),
              child: const Text('Show Confirm'),
            );
          }),
        ),
      ),
    );

    // On click show confirm
    await tester.tap(find.byType(ElevatedButton));

    // wait modal show
    await tester.pumpAndSettle();

    // Verify show confirm dialog.
    expect(
      find.text('Confirm Remove'),
      findsWidgets,
    );

    // On click cancel
    await tester.tap(find.text('Cancel'));

    // wait modal hide
    await tester.pumpAndSettle();

    // Verify show confirm dialog.
    expect(
      find.text('Confirm Remove'),
      findsNothing,
    );
  });

  testWidgets('Show confirm modal on Remove', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () => showConfirm(
                context: context,
                title: "Confirm Remove",
                content: "Are you sure you want to remove this video?",
                cancelText: "Cancel",
                confirmText: "Remove",
                onCancel: () => print("Cancel"),
                onConfirm: () => print("Confirm"),
              ),
              child: const Text('Show Confirm'),
            );
          }),
        ),
      ),
    );

    // On click show confirm
    await tester.tap(find.byType(ElevatedButton));

    // wait modal show
    await tester.pumpAndSettle();

    // Verify show confirm dialog.
    expect(
      find.text('Confirm Remove'),
      findsWidgets,
    );

    // On click Remove
    await tester.tap(find.text('Remove'));

    // wait modal hide
    await tester.pumpAndSettle();

    // Verify show confirm dialog.
    expect(
      find.text('Confirm Remove'),
      findsNothing,
    );
  });
}
