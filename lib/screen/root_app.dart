import 'package:flutter/material.dart';
import 'package:social_media/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: getFooter(),
      ),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      height: 68,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: kGrey.withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeTab = 0;
                  });
                },
                child: Icon(Icons.home, size: 32, color: activeTab == 0 ? kPrimary : kBlack),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeTab = 1;
                  });
                },
                child: Icon(Icons.chat_bubble_outline, size: 30, color: activeTab == 1 ? kPrimary : kBlack),
              ),
              SizedBox(width: 90),
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeTab = 2;
                  });
                },
                child: Icon(Icons.favorite_border, size: 30, color: activeTab == 2 ? kPrimary : kBlack),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeTab = 3;
                  });
                },
                child: Icon(Icons.account_circle, size: 30, color: activeTab == 3 ? kPrimary : kBlack),
              ),
            ],
          ),
          Positioned(
            top: -25,
            child: RotationTransition(
              //angle: -math.pi / 4,
              turns: AlwaysStoppedAnimation(45 / 360),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: kBlack,
                  boxShadow: [
                    BoxShadow(
                      color: kGrey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Center(
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Icon(
                      Icons.add_circle_outline,
                      size: 28,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
