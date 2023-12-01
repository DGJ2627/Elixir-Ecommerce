import 'package:http/http.dart'as http;
import 'dart:convert';
class HttpHelper{
  static String get _baseUrl => 'https://fakestoreapi.com/products';

  static Future<Map<String ,dynamic>> get(String endpoint)async{
    final res = await http.get(Uri.parse('$_baseUrl/endpoint'));
    return _handleResponse(res);
  }

  static Future<Map<String ,dynamic>> post(String endpoint,dynamic data)async{
    final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
      headers : {'Content-Type':'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String ,dynamic>> put(String endpoint,dynamic data)async{
    final response = await http.put(Uri.parse('$_baseUrl/$endpoint'),
      headers : {'Content-Type':'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String ,dynamic>> delete(String endpoint)async{
    final res = await http.delete(Uri.parse('$_baseUrl/endpoint'));
    return _handleResponse(res);
  }


  static Map<String,dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    }
    else{
      throw Exception('Failed to load date:${response.statusCode}');
  }

  }
}