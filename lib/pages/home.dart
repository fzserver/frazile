import 'package:flutter/material.dart';
import 'package:frazile/constants/color.dart';
import 'package:frazile/constants/constants.dart';
import 'package:frazile/extensions/fzPlatform.dart';
import 'package:frazile/provider/facemashapi.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../constants/sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0.0;
  late double imageWidth;
  late double imageHeight;

  @override
  void initState() {
    super.initState();
    Provider.of<FacemashProvider>(context, listen: false).fetchimages();
    // Triggering the animation after a short delay
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isWeb()) {
      if (Sizes(context).width < 600) {
        imageWidth = Sizes(context).width * .35;
        imageHeight = Sizes(context).height / 2 * .6;
      } else if (Sizes(context).width < 1200) {
        imageWidth = Sizes(context).width * .25;
        imageHeight = Sizes(context).height * .6;
      } else {
        imageWidth = Sizes(context).width * .25;
        imageHeight = Sizes(context).height * .6;
      }
    } else {
      if (isAndroid() || isIOS()) {
        imageWidth = Sizes(context).width * .35;
        imageHeight = Sizes(context).height / 2 * .6;
      }
      imageWidth = Sizes(context).width * .35;
      imageHeight = Sizes(context).height / 2 * .6;
    }
    final facemashProvider = Provider.of<FacemashProvider>(context);
    // final List<Images> images = facemashProvider.images;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.appName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: FzColors.hexToColor(FzColors.facemashColor),
      ),
      body: Center(
        child: facemashProvider.isFetching
            ? CircularProgressIndicator(
                color: FzColors.hexToColor(FzColors.facemashColor),
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Were we let in for our looks? No. Will we be judged on them? Yes.',
                      style: GoogleFonts.caveat(
                        fontSize: Sizes(context).width * .035,
                        color: FzColors.hexToColor(FzColors.facemashColor),
                      ),
                    ),
                    Text(
                      'Who\'s Hotter? Click to Choose.',
                      style: GoogleFonts.caveat(
                        fontSize: Sizes(context).width * .03,
                        color: FzColors.hexToColor(FzColors.facemashColor),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // Container(
                        //   width: Sizes(context).width * .4,
                        //   height: Sizes(context).width * .4,
                        //   decoration: BoxDecoration(
                        //     color: FzColors.hexToColor(FzColors.facemashColor),
                        //     borderRadius: BorderRadius.circular(Sizes(context).width * .01),
                        //     image: DecorationImage(
                        //       image: AssetImage(Assets.logo.logo.path),
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                Constants.logger
                                    .w('ID:${facemashProvider.images[0].id!}');
                                Constants.logger
                                    .w(facemashProvider.images[0].imageurl!);
                                Constants.logger
                                    .w(facemashProvider.images[0].wins!);
                                Constants.logger
                                    .w(facemashProvider.images[0].losses!);
                                Constants.logger
                                    .w(facemashProvider.images[0].score!);
                                Constants.logger
                                    .w(facemashProvider.images[0].expected!);
                                facemashProvider.fetchimages();
                              },
                              child: AnimatedOpacity(
                                duration:
                                    Duration(seconds: 1), // Animation duration
                                opacity: _opacity, // Opacity value
                                child: Container(
                                  width: imageWidth,
                                  height: imageHeight,
                                  decoration: BoxDecoration(
                                    color: FzColors.hexToColor(
                                        FzColors.facemashColor),
                                    borderRadius: BorderRadius.circular(
                                        Sizes(context).width * .01),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        facemashProvider.images[0].imageurl!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Won: ${facemashProvider.images[0].wins!}, Lost: ${facemashProvider.images[0].losses!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Score: ${facemashProvider.images[0].score!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Expected: ${facemashProvider.images[0].expected!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                Constants.logger
                                    .w('ID:${facemashProvider.images[1].id!}');
                                Constants.logger
                                    .w(facemashProvider.images[1].imageurl!);
                                Constants.logger
                                    .w(facemashProvider.images[1].wins!);
                                Constants.logger
                                    .w(facemashProvider.images[1].losses!);
                                Constants.logger
                                    .w(facemashProvider.images[1].score!);
                                Constants.logger
                                    .w(facemashProvider.images[1].expected!);
                                facemashProvider.fetchimages();
                              },
                              child: AnimatedOpacity(
                                duration:
                                    Duration(seconds: 1), // Animation duration
                                opacity: _opacity, // Opacity value
                                child: Container(
                                  width: imageWidth,
                                  height: imageHeight,
                                  decoration: BoxDecoration(
                                    color: FzColors.hexToColor(
                                        FzColors.facemashColor),
                                    borderRadius: BorderRadius.circular(
                                        Sizes(context).width * .01),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        facemashProvider.images[1].imageurl!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Won: ${facemashProvider.images[1].wins!}, Lost: ${facemashProvider.images[1].losses!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Score: ${facemashProvider.images[1].score!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Expected: ${facemashProvider.images[1].expected!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
