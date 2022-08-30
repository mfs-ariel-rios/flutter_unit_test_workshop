import 'package:flutter_unit_test_workshop_1/domain/models/student.dart';
import 'package:http/http.dart' as http;

class Repository {
  final RemoteDataSource remoteDataSource;
  Repository(this.remoteDataSource);

  Future<Student> fetch() async {
    late String result;
    try {
      result = await remoteDataSource.fetch();
    } catch (e) {
      throw Exception(e);
    }
    Student student = Student.fromRawJson(result);
    return student;
  }
}

class RemoteDataSource {
  Future<String> fetch() async {
    final result = await http.get(Uri.parse(''));
    return result.body;
  }
}
