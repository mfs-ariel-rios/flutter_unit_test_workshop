import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test_workshop_1/data/repository.dart';
import 'package:flutter_unit_test_workshop_1/domain/models/student.dart';
import 'package:mocktail/mocktail.dart';

class MockRemoteDataSource extends Mock implements RemoteDataSource {}

void main() {
  test(
    "El método fetch() Devolverá una instancia de student cuando este es correcto",
    () async {
      // Arrange
      MockRemoteDataSource mockDS = MockRemoteDataSource();
      Repository repo = Repository(mockDS);
      when(() => mockDS.fetch())
          .thenAnswer((_) => Future.value('{"name": "Alumno prueba"}'));
      // Act
      final Student result = await repo.fetch();
      // Assert
      expect(result, isInstanceOf<Student>());
    },
  );

  test(
    "El método fetch() Devolverá throwException cuando se atrape alguna excepción",
    () {
      MockRemoteDataSource mockDS = MockRemoteDataSource();
      Repository repo = Repository(mockDS);
      when(() => mockDS.fetch())
          .thenThrow(const SocketException('Mock Exception'));
      expect(() => repo.fetch(), throwsException);
    },
  );
}
