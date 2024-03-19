import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:frazile/gen/assets.gen.dart';
import '../models/facemash.dart';

class FacemashProvider with ChangeNotifier {
  FacemashModel? _dataModel;
  FacemashModel? get facemashModel => _dataModel;

  bool _isFetching = false;
  bool get isFetching => _isFetching;

  Future<void> fetchimages() async {
    _isFetching = true;
    final String jsonString = await rootBundle.loadString(Assets.json.data);
    final jsonData = jsonDecode(jsonString);
    _dataModel = FacemashModel.fromJson(jsonData);
    _isFetching = false;
    notifyListeners();
  }
}
