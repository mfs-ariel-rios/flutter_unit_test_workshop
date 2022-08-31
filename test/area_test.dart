import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test_workshop_1/domain/models/area.dart';

void main() {
  late Area area;

  setUp(() {
    area = Area();
  });

  group('Area del circulo', () {
    test('Area del circulo con area 1 debe ser 3.141592', () {
      // Arrange

      // Act
      double result = area.circle(1);
      // Assert
      expect(result, 3.141592);
    });

    test('Area del circulo con area 10 debe ser 314.1592', () {
      // Arrange

      // Act
      double result = area.circle(10);
      // Assert
      expect(result, 314.1592);
    });

    test('Area.pi debería ser 3.141592', () {
      // Arrange

      // Act

      // Assert
      expect(Area.pi, 3.141592);
    });
  });
}
