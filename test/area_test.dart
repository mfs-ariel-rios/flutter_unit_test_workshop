import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test_workshop_1/domain/models/area.dart';

void main() {
  test('Area del circulo con area 1 debe ser 3.141592', () {
    // Arrange
    Area area = Area();
    // Act
    double result = area.circle(1);
    // Assert
    expect(result, 3.141592);
  });

  test('Area.pi debería ser 3.141592', () {
    // Arrange

    // Act

    // Assert
    expect(Area.pi, 3.141592);
  });
}
