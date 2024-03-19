import 'package:frazile/provider/facemashapi.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<FacemashProvider>(
          create: (context) => FacemashProvider(),
        ),
      ];
}
