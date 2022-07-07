import 'package:flutter/material.dart';
import 'package:web_practice/utils/assets.dart';
import 'package:web_practice/utils/size_config.dart';
import 'package:web_practice/widgets/custom_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int imageNo = -1;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: SizeConfig.width,
            height: SizeConfig.height,
            child: imageNo >= 0
                ? Image.asset(
                    Assets.images[imageNo],
                    fit: BoxFit.fill,
                  )
                : const ColoredBox(
                    color: Colors.amber,
                  ),
          ),
          CustomImage(
            onHover: (hovering) {
              if (hovering) {
                setState(() {
                  imageNo = 0;
                });
              } else {
                setState(() {
                  imageNo = -1;
                });
              }
            },
            imageNo: 0,
            center: Offset(
              SizeConfig.width * 0.85,
              SizeConfig.height * 0.2,
            ),
          ),
          CustomImage(
            onHover: (hovering) {
              if (hovering) {
                setState(() {
                  imageNo = 1;
                });
              } else {
                setState(() {
                  imageNo = -1;
                });
              }
            },
            imageNo: 1,
            center: Offset(
              SizeConfig.width * 0.65,
              SizeConfig.height * 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
