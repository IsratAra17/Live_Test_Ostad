import 'dart:convert';

import 'package:http/http.dart' as http;

var BaseURL = "https://jsonplaceholder.typicode.com/posts";
var RequestHeader = {"Content-Type": "application/json"};

Future<List> TaskListRequest(Status) async {
  var URL = Uri.parse("${BaseURL}");
  print("URL: $BaseURL") ;

  var RequestHeader = {"Content-Type": "application/json"};
  var response = await http.get(URL, headers: RequestHeader);
  var ResultCode = response.statusCode;
  print("Request: $ResultCode");

  var ResultBody = json.decode(response.body);
  if (ResultCode == 200) {
    print("Success request");
    return ResultBody['data'];
  } else {
    print("Error request");
    return [];
  }
}
