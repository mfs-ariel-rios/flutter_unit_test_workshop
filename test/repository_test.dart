import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test_workshop_1/data/mocks/mock_remote_data_source.dart';
import 'package:flutter_unit_test_workshop_1/data/repository.dart';
import 'package:flutter_unit_test_workshop_1/domain/models/student.dart';

void main() {
  test(
      "El método fetch() Devolverá una instancia de student cuando este es correcto",
      () async {
    Repository repo = Repository(MockRemoteDataSourceSuccess());
    final Student result = await repo.fetch();
    expect(result, isInstanceOf<Student>());
  });

  test(
      "El método fetch() Devolverá throwException cuando se atrape alguna excepción",
      () {
    Repository repo = Repository(MockRemoteDataSourceFailure());
    expect(() => repo.fetch(), throwsException);
  });
}
