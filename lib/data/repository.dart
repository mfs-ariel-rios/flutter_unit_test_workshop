import 'package:flutter_unit_test_workshop_1/domain/models/student.dart';
import 'package:http/http.dart' as http;

class Repository {
  final DataSource dataSource;
  Repository(this.dataSource);

  Future<Student> fetch() async {
    late String result;
    try {
      result = await dataSource.fetch();
    } catch (e) {
      throw Exception(e);
    }
    Student student = Student.fromRawJson(result);
    return student;
  }
}

abstract class DataSource {
  Future<String> fetch();
}

class RemoteDataSource extends DataSource {
  @override
  Future<String> fetch() async {
    final result = await http.get(Uri.parse(''));
    return result.body;
  }
}
