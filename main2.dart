import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() async {
  int a = await getData().then((value) {
    print(value);
    return value;
  });
}

Future<int> getData() async {
  Response response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
  print(response.body);
  return response.statusCode;
}
