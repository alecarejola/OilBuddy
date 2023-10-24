// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:oil_buddy/views/home_page.dart';

void main() {
  testWidgets('Example test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
        const OilBuddy()); // Replace MyApp() with your app's main widget

    // You can write test cases to interact with and assert the behavior of widgets here.
    // For example, you can find widgets by key and check if they exist.

    final buttonFinder = find.text('Go to Account Page');
    expect(buttonFinder, findsOneWidget);

    // Perform some actions (e.g., tapping a button)
    await tester.tap(buttonFinder);
    await tester.pump();

    // You can make assertions about the state of the app after the action.

    // You can add more test cases for other widgets and interactions as needed.
  });
}
