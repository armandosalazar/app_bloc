import 'package:http/http.dart' as http;

// Abstract class can't be instantiated
abstract class UsersService {
  final _httpClient = http.Client();
  final _baseUrl = 'https://642351e0001cb9fc203d0b3b.mockapi.io/users';

  Future<void> getUsers() async {
    final response = await _httpClient.get(Uri.parse(_baseUrl));
    print(response.body);
  }
}
