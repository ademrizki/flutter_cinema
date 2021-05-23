import 'package:flutter/material.dart';
import 'package:flutter_cinema/src/view/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Test Home Page',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomePage(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(TextField), findsOneWidget);

      expect(find.text('Now Playing'), findsOneWidget);

      expect(find.byType(Consumer), findsWidgets);
    },
  );
}
