import 'dart:math';

import 'package:flutter/material.dart';
import 'package:web_practice/utils/assets.dart';
import 'package:web_practice/utils/size_config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int imageNo = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Stack(
        children: [
          // SizedBox(
          //   width: SizeConfig.width,
          //   height: SizeConfig.height,
          //   child: FadeInImage.assetNetwork(
          //     placeholder: Assets.images[imageNo],
          //     image: Assets.images[imageNo],
          //   ),
          // ),
          AnimatedSwitcher(
            duration: const Duration(
              milliseconds: 400,
            ),
            child: Image.asset(
              Assets.images[imageNo],
              fit: BoxFit.fill,
              width: SizeConfig.width,
              height: SizeConfig.height,
            ),
          ),
          SizedBox(
            width: SizeConfig.width,
            height: SizeConfig.height,
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: getImageButtons(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getImageButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              onHover: (hovering) {
                if (hovering) {
                  setState(() {
                    imageNo = 1;
                  });
                } else {
                  setState(() {
                    imageNo = 0;
                  });
                }
              },
              child: Container(
                width: SizeConfig.height * 0.3,
                height: SizeConfig.height * 0.2,
                decoration: BoxDecoration(
                  image: imageNo != 1
                      ? DecorationImage(
                          image: AssetImage(
                            Assets.image1,
                          ),
                          fit: BoxFit.fill,
                        )
                      : null,
                  border: Border.all(
                    color: Colors.white,
                    width: 5.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  int getRandom() {
    final random = Random();
    int temp = random.nextInt(4);
    if (temp == imageNo) {
      return getRandom();
    }
    return temp;
  }
}
