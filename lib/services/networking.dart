import 'package:http/http.dart'
    as http; // import http as http so you can specify
import 'dart:convert'; //json converter

class NetworkHelper {
  NetworkHelper(this.url);

  var url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      //if to check status code
      String data =
          response.body; //if all is good create string with response body

      return jsonDecode(data); //decode  the json d
    } else {
      print(response.statusCode);
    }
  }
}
