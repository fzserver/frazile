import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frazile/constants/constants.dart';
import 'package:frazile/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0.0; // Initial opacity

  @override
  void initState() {
    super.initState();
    // Triggering the animation after a short delay
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0; // Setting opacity to 1 for fade-in effect
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Frazile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Were we let in for our looks? No. Will we be judged on them? Yes.',
                style: GoogleFonts.caveat(
                  fontSize: width * .035,
                  color: Colors.pink,
                ),
              ),
              Text(
                'Who\'s Hotter? Click to Choose.',
                style: GoogleFonts.caveat(
                  fontSize: width * .03,
                  color: Colors.pink,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Container(
                  //   width: width * .4,
                  //   height: width * .4,
                  //   decoration: BoxDecoration(
                  //     color: Colors.pink,
                  //     borderRadius: BorderRadius.circular(width * .01),
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
                          Constants.logger.w('ID: 1');
                        },
                        child: AnimatedOpacity(
                          duration: Duration(seconds: 1), // Animation duration
                          opacity: _opacity, // Opacity value
                          child: Container(
                            width: width * .25,
                            height: height * .6,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(width * .01),
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1668650870010-0a81e62a54cb?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text('Won: 1, Lost: 10'),
                      Text('Score: 1500'),
                      Text('Expected: 0.5'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          Constants.logger.w('ID: 2');
                        },
                        child: AnimatedOpacity(
                          duration: Duration(seconds: 1), // Animation duration
                          opacity: _opacity, // Opacity value
                          child: Container(
                            width: width * .25,
                            height: height * .6,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(width * .01),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1531069809673-062827451d48?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text('Won: 10, Lost: 1'),
                      Text('Score: 1500'),
                      Text('Expected: 0.5'),
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
