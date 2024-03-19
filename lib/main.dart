import 'package:flutter/material.dart';
import 'package:frazile/constants/color.dart';
import 'package:frazile/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pages/home.dart';
import 'provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.providers(),
      child: MaterialApp(
        title: Constants.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: FzColors.hexToColor(FzColors.facemashColor),
          ),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            color: FzColors.hexToColor(FzColors.facemashColor),
            titleTextStyle: GoogleFonts.caveat(
              fontSize: 35.0,
              color: FzColors.hexToColor(FzColors.textColorWhite),
            ),
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
