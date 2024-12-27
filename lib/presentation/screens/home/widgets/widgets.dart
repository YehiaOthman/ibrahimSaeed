import 'package:flutter/material.dart';

import '../../../../core/color_manger.dart';

Widget buildTasksItem() {
  return Card(
    color: Colors.transparent,
    elevation: 18,
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorManger.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Problem Solving *(STL)',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Text(
            '''The Standard Template Library  in C++ is a powerful and widely-used library that provides a set of tools to help programmers solve problems efficiently. ''',
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Work progress',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              Text('56%',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ],
          ),
          SizedBox(height: 10),
          LinearProgressIndicator(
            value: 0.56,
            color: ColorManger.primaryColor.withOpacity(0.8),
            backgroundColor: Colors.white,
            minHeight: 18,
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(height: 8,)
        ],
      ),
    ),
  );
}
Widget buildDailyQuizTaskItem() {
  return Card(
    color: Colors.transparent,
    elevation: 18,
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorManger.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Daily Quiz',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Work progress',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              Text('0%',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ],
          ),
          SizedBox(height: 10),
          LinearProgressIndicator(
            value: 0.01,
            color: ColorManger.primaryColor.withOpacity(0.8),
            backgroundColor: Colors.white,
            minHeight: 18,
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(height: 8,)
        ],
      ),
    ),
  );
}
