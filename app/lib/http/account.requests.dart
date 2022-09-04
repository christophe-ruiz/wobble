import 'dart:convert';

import 'package:app/config/server.config.dart';
import 'package:app/models/Account.dart';
import 'package:http/http.dart' as http;

class AccountRequests {
  static const String _route = "accounts/";

  static Future<Account> getAccount(String id) async {
    final res = await http.get(Uri.parse(Server.endpoint + _route + id));
    print(res.body);
    if (res.statusCode == 200) {
      return Account.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("Couldn't retrieve account");
    }
  }
}