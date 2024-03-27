import 'package:flutter/material.dart';
import 'package:frazile/constants/color.dart';
import 'package:frazile/constants/constants.dart';
import 'package:frazile/extensions/fzPlatform.dart';
import 'package:frazile/functions/algorithm.dart';
import 'package:frazile/provider/facemashapi.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../constants/sizes.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0.0;
  late double imageWidth;
  late double imageHeight;
  final FocusNode _focusNode = FocusNode();

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
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isWeb()) {
      if (Sizes(context).width < 600) {
        imageWidth = Sizes(context).width * .35;
        imageHeight = Sizes(context).height / 2 * .6;
      } else if (Sizes(context).width < 1200) {
        imageWidth = Sizes(context).width * .2;
        imageHeight = Sizes(context).height * .6;
      } else {
        imageWidth = Sizes(context).width * .2;
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
            : 
            KeyboardListener(
        autofocus: true,
        focusNode: _focusNode,
        onKeyEvent: (KeyEvent event) {
          if (event is KeyUpEvent) {
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
              facemashProvider.rateimages(
                                    facemashProvider
                                        .abstarctModel!.data!.images![0].id!,
                                    facemashProvider
                                        .abstarctModel!.data!.images![1].id!);
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
             facemashProvider.rateimages(
                                    facemashProvider
                                        .abstarctModel!.data!.images![1].id!,
                                    facemashProvider
                                        .abstarctModel!.data!.images![0].id!);
            }
          }
        },
child:
            SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Were we let in for our looks? No. Will we be judged on them? Yes.',
                      style: GoogleFonts.caveat(
                        fontSize: Sizes(context).width * .03,
                        color: FzColors.hexToColor(FzColors.facemashColor),
                      ),
                    ),
                    Text(
                      'Who\'s Hotter? Click to Choose.',
                      style: GoogleFonts.caveat(
                        fontSize: Sizes(context).width * .025,
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
                                Constants.logger.w(
                                    'ID:${facemashProvider.abstarctModel!.data!.images![0].id!}');
                                Constants.logger.w(
                                  facemashProvider
                                          .abstarctModel!.data!.baseUrl! +
                                      facemashProvider.abstarctModel!.data!
                                          .images![0].filename!,
                                );
                                Constants.logger.w(facemashProvider
                                    .abstarctModel!.data!.images![0].wins!);
                                Constants.logger.w(facemashProvider
                                    .abstarctModel!.data!.images![0].losses!);
                                Constants.logger.w(facemashProvider
                                    .abstarctModel!.data!.images![0].score!);
                                // facemashProvider.fetchimages();
                                facemashProvider.rateimages(
                                    facemashProvider
                                        .abstarctModel!.data!.images![0].id!,
                                    facemashProvider
                                        .abstarctModel!.data!.images![1].id!);
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
                                        facemashProvider
                                                .abstarctModel!.data!.baseUrl! +
                                            facemashProvider.abstarctModel!
                                                .data!.images![0].filename!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Won: ${facemashProvider.abstarctModel!.data!.images![0].wins!}, Lost: ${facemashProvider.abstarctModel!.data!.images![0].losses!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Score: ${facemashProvider.abstarctModel!.data!.images![0].score!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Expected: ${expected(facemashProvider.abstarctModel!.data!.images![1].score!, facemashProvider.abstarctModel!.data!.images![0].score!).toStringAsFixed(4)}',
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
                                Constants.logger.w(
                                    'ID:${facemashProvider.abstarctModel!.data!.images![1].id!}');
                                Constants.logger.w(
                                  facemashProvider
                                          .abstarctModel!.data!.baseUrl! +
                                      facemashProvider.abstarctModel!.data!
                                          .images![1].filename!,
                                );
                                Constants.logger.w(facemashProvider
                                    .abstarctModel!.data!.images![1].wins!);
                                Constants.logger.w(facemashProvider
                                    .abstarctModel!.data!.images![1].losses!);
                                Constants.logger.w(facemashProvider
                                    .abstarctModel!.data!.images![1].score!);
                                // facemashProvider.fetchimages();
                                facemashProvider.rateimages(
                                    facemashProvider
                                        .abstarctModel!.data!.images![1].id!,
                                    facemashProvider
                                        .abstarctModel!.data!.images![0].id!);
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
                                        facemashProvider
                                                .abstarctModel!.data!.baseUrl! +
                                            facemashProvider.abstarctModel!
                                                .data!.images![1].filename!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Won: ${facemashProvider.abstarctModel!.data!.images![1].wins!}, Lost: ${facemashProvider.abstarctModel!.data!.images![1].losses!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Score: ${facemashProvider.abstarctModel!.data!.images![1].score!}',
                              style: TextStyle(
                                color:
                                    FzColors.hexToColor(FzColors.facemashColor),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Expected: ${expected(facemashProvider.abstarctModel!.data!.images![0].score!, facemashProvider.abstarctModel!.data!.images![1].score!).toStringAsFixed(4)}',
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
      ),
    );
  }
}
