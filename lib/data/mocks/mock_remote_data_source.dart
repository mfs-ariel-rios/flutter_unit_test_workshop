import 'dart:io';

import 'package:flutter_unit_test_workshop_1/data/repository.dart';

class MockRemoteDataSourceSuccess implements RemoteDataSource {
  @override
  Future<String> fetch() {
    return Future.value('{"name": "Alumno prueba"}');
  }
}

class MockRemoteDataSourceFailure implements RemoteDataSource {
  @override
  Future<String> fetch() async {
    throw const SocketException("Mock exception");
  }
}
