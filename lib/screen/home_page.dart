import 'package:flutter/material.dart';
import 'package:social_media/data/post_json.dart';
import 'package:social_media/data/user_json.dart';
import 'package:social_media/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "Feed",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // User Profile
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBlack,
                        gradient: LinearGradient(
                          colors: const [Color(0xFFFFE0DF), Color(0xFFE1F6F4)],
                        )),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 28,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Row(
                    children: List.generate(
                      usersList.length,
                      (index) => Container(
                        width: 58,
                        height: 58,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: ExactAssetImage(usersList[index]['img']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // Posts
            SizedBox(height: 30),
            Column(
              children: List.generate(
                6,
                (index) => Container(
                  width: double.infinity,
                  height: 288,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: kGrey.withOpacity(0.4),
                        blurRadius: 15,
                        spreadRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                    image: DecorationImage(
                      image: ExactAssetImage(postsList[0]['postImg']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
