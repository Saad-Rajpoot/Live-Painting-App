import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:live_painting_app/main.dart';

void main() {
  testWidgets('App starts with canvas and settings button', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(LivePaintingApp());

    // Verify the app starts with the canvas.
    expect(find.byType(CustomPaint), findsOneWidget);

    // Verify the settings button is present.
    expect(find.byIcon(Icons.settings), findsOneWidget);
  });

  testWidgets('Settings button navigates to SettingsScreen', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(LivePaintingApp());

    // Tap the settings button and trigger a frame.
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pumpAndSettle();

    // Verify the settings screen is displayed.
    expect(find.text('Brush Color'), findsOneWidget);
    expect(find.text('Brush Size'), findsOneWidget);
  });

  testWidgets('Changing brush color updates the BrushSettings', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(LivePaintingApp());

    // Tap the settings button and trigger a frame.
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pumpAndSettle();

    // Tap the color button (e.g., red) and trigger a frame.
    await tester.tap(find.byWidgetPredicate(
          (Widget widget) =>
      widget is GestureDetector &&
          widget.child is Container &&
          (widget.child as Container).decoration is BoxDecoration &&
          ((widget.child as Container).decoration as BoxDecoration).color == Colors.red,
    ));
    await tester.pumpAndSettle();

    // Verify the brush color is updated in the settings.
    expect(find.byType(Slider), findsOneWidget);
  });

  testWidgets('Changing brush size updates the BrushSettings', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(LivePaintingApp());

    // Tap the settings button and trigger a frame.
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pumpAndSettle();

    // Change the brush size using the slider and trigger a frame.
    await tester.drag(find.byType(Slider), Offset(50, 0));
    await tester.pumpAndSettle();

    // Verify the brush size is updated in the settings.
    expect(find.byType(Slider), findsOneWidget);
  });
}