import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:frazile/constants/api.dart';
import 'package:frazile/constants/constants.dart';
import 'package:frazile/models/abstractfm.dart';
import 'package:http/http.dart' as http;

class FacemashProvider with ChangeNotifier {
  // FacemashModel? _dataModel;
  // FacemashModel? get facemashModel => _dataModel;

  Abstractfm? _abstractFM;
  Abstractfm? get abstarctModel => _abstractFM;

  // List<Images>? _images = [];
  // List<Images> get images => _images!;

  bool _isFetching = false;
  bool get isFetching => _isFetching;

  Future<void> fetchimages() async {
    _isFetching = true;

    // Create a map with the data to be sent
    final Map<String, dynamic> data = {
      'limit': APIConstants.limit,
    };

    // Encode the data to JSON
    final body = jsonEncode(data);

    // Set headers with content type as application/json
    final headers = {
      'Access-Control-Allow-Origin': '*',
      APIConstants.contenttype: APIConstants.contentjson,
    };

    // Make the POST request
    final response = await http.post(
      Uri.parse(
        APIConstants.secureprotocol +
            APIConstants.baseURL +
            APIConstants.abstractendpoint,
      ),
      headers: headers,
      body: body,
    );

    Constants.logger.w(response);
    Constants.logger.w(response.headers);

    final jsonData = jsonDecode(response.body);
    _abstractFM = Abstractfm.fromJson(jsonData);

    // final String jsonString = await rootBundle.loadString(Assets.json.data);
    // final jsonData = jsonDecode(jsonString);
    // _dataModel = FacemashModel.fromJson(jsonData);

    // for (var image in _dataModel!.data!) {
    //   Constants.logger.w(image.toString());
    //   _images!.add(image);
    // }
    // _images!.shuffle();

    _isFetching = false;
    notifyListeners();
  }

  Future<void> rateimages(String winner, String loser) async {
    // Create a map with the data to be sent
    final Map<String, dynamic> data = {
      "winner": winner,
      "loser": loser,
    };

    // Encode the data to JSON
    final body = jsonEncode(data);

    // Set headers with content type as application/json
    final headers = {
      'Access-Control-Allow-Origin': '*',
      APIConstants.contenttype: APIConstants.contentjson,
    };

    // Make the POST request
    final response = await http.post(
      Uri.parse(
        APIConstants.secureprotocol +
            APIConstants.baseURL +
            APIConstants.rateabstractendpoint,
      ),
      headers: headers,
      body: body,
    );

    Constants.logger.w(response.statusCode);
    // Constants.logger.w(response.headers);

    if (response.statusCode == 200) {
      fetchimages();
    }
  }
}
