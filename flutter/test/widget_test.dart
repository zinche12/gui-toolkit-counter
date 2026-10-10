import 'package:flutter_test/flutter_test.dart';
import 'package:gui_toolkit_counter/counter_model.dart';
import 'package:gui_toolkit_counter/main.dart';

void main() {
  testWidgets('Counter increments', (WidgetTester tester) async {
    final model = CounterModel();
    await tester.pumpWidget(CounterApp(model: model));

    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.text('Increment'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
