import 'package:http/http.dart' as http;

class ServiceApi {
  ServiceApi(Object? data);

  Future<String> getData() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    print(response.body);
    return response.body;
  }
}
