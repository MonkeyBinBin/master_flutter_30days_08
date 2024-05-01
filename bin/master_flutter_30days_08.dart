import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

void main(List<String> arguments) {
  // use uuid package
  // install uuid package: dart pub add uuid
  var uuid = Uuid();
  print('UUID v1: ${uuid.v1()}');

  // use dio package
  // install dio package: dart pub add dio
  final dio = Dio();
  dio.get('https://jsonplaceholder.typicode.com/posts/1').then((response) {
    print(response.data);
  }); 
}
