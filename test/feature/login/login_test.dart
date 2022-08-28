import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('Sample Test', () {
    const isUserLogin = true;

    expect(isUserLogin, isTrue);
  });

  group("User login full test", () {
    test("User login test 1", () {
      const isUserLogin = true;

      expect(isUserLogin, isTrue);
    });

    test("User login test 2", () {
      const isUserLogin = true;

      expect(isUserLogin, isTrue);
    });

    test("User login test 3", () {
      const isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
  });
}
