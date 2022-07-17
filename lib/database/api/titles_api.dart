import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../domain/models/title_model.dart';
import '../server_error.dart';

class TitlesApi {
  Future<Title> getTitleApi() async {
    try {
      // final _headers = {};
      http.Response response =
          await http.get(Uri.parse("http://localhost:3000/api/titles"));
      final decoded = jsonDecode(response.body);
      // log("Get Title res: ${response.body}");
      if (response.statusCode == 200) {
        return Title.fromMap(decoded);
      }throw ServerError<Title>(
          title: "Failed to get titles",
          body: decoded["message"]??""
        );
    } catch (e) {
      rethrow;
    }
  }

  // Future<Response> getUsersApi() async {
  //   try {
  //     final Response response = await dioService.get(Endpoints.users);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<Response> updateUserApi(int id, String name, String job) async {
  //   try {
  //     final Response response = await dioService.put(
  //       Endpoints.users + '/$id',
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<void> deleteUserApi(int id) async {
  //   try {
  //     await dioService.delete(Endpoints.users + '/$id');
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
