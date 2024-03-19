import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:frazile/constants/constants.dart';
import 'package:frazile/gen/assets.gen.dart';
import '../models/facemash.dart';

class FacemashProvider with ChangeNotifier {
  FacemashModel? _dataModel;
  FacemashModel? get facemashModel => _dataModel;

  List<Images>? _images = [];
  List<Images> get images => _images!;

  bool _isFetching = false;
  bool get isFetching => _isFetching;

  Future<void> fetchimages() async {
    _isFetching = true;
    final String jsonString = await rootBundle.loadString(Assets.json.data);
    final jsonData = jsonDecode(jsonString);
    _dataModel = FacemashModel.fromJson(jsonData);

    for (var image in _dataModel!.data!) {
      Constants.logger.w(image.toString());
      _images!.add(image);
    }
    _images!.shuffle();
    _isFetching = false;
    notifyListeners();
  }
}
