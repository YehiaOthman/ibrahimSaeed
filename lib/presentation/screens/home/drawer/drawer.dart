import 'package:flutter/material.dart';

import '../../../../core/color_manger.dart';

Widget buildDrawer(context) {
  return Drawer(
    width: MediaQuery.of(context).size.width * 0.6,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: ColorManger.primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/pp.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 15,),
                      Text(
                        'Yehia Othman',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.flash_on_outlined ,color: Colors.yellow, size: 18,),
                      Text('24' ,style: TextStyle(color: Colors.white, fontSize: 18 ,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  buildDrawerBtn(Icons.home, 'Home'),
                  SizedBox(
                    height: 20,
                  ),
                  buildDrawerBtn(Icons.person, 'Profile'),
                  SizedBox(
                    height: 20,
                  ),
                  buildDrawerBtn(Icons.add_card_rounded, 'Blog'),
                  SizedBox(
                    height: 20,
                  ),
                  buildDrawerBtn(Icons.account_tree_outlined, 'Learning'),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildDrawerBtn(IconData iconData, String title) {
  return Card(
    elevation: 8,
    child: Container(
      width: 165,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: ColorManger.primaryColor,
            size: 25,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: TextStyle(
                color: ColorManger.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    ),
  );
}
