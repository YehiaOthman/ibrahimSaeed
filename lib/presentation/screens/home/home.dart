import 'package:flutter/material.dart';
import 'package:intervyou_app/core/color_manger.dart';
import 'package:intervyou_app/presentation/screens/home/drawer/drawer.dart';
import 'package:intervyou_app/presentation/screens/home/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> names = [
    'Alice',
    'Bob',
    'Charlie',
    'Diana',
    'Ethan',
    'Fiona',
    'George',
    'Hannah',
    'Ian',
    'Julia',
    'Kevin',
    'Laura',
    'Michael',
    'Nina',
    'Oscar',
    'Paula',
    'Quincy',
    'Rachel',
    'Sam',
    'Tina',
    'Uma',
    'Victor',
    'Wendy',
    'Xander',
    'Yara',
    'Zane',
    'Aaron',
    'Beth',
    'Carl',
    'Dana',
    'Elliot',
    'Faith',
    'Grant',
    'Heather',
    'Ivan',
    'Jenna',
    'Kyle',
    'Lydia',
    'Miles',
    'Nora',
    'Oliver',
    'Patricia',
    'Quinn',
    'Ruth',
    'Sean',
    'Teresa',
    'Ursula',
    'Vince',
    'Willow',
    'Xenia',
    'Yvonne',
    'Zack',
    'Adam',
    'Bella',
    'Connor',
    'Delia',
    'Evan',
    'Faye',
    'Gavin',
    'Hailey',
    'Isaac',
    'Jackie',
    'Kara',
    'Liam',
    'Megan',
    'Noah',
    'Olivia',
    'Peter',
    'Quella',
    'Ron',
    'Sophia',
    'Toby',
    'Una',
    'Vera',
    'Walter',
    'Ximena',
    'Yusuf',
    'Zoe',
    'Amelia',
    'Brandon',
    'Cindy',
    'Derek',
    'Eleanor',
    'Felix',
    'Greg',
    'Holly',
    'Ian',
    'Jessica',
    'Karl',
    'Lila',
    'Mason',
    'Natalie',
    'Owen',
    'Piper',
    'Quinlan',
    'Ryan',
    'Stella',
    'Travis',
    'Ulysses',
    'Victoria'
  ];
  List<Widget> tasks = [
    buildTasksItem(),
    buildTasksItem(),
    buildDailyQuizTaskItem(),
    buildTasksItem(),
    buildTasksItem(),
    buildDailyQuizTaskItem(),
    buildTasksItem(),
    buildTasksItem(),
    buildDailyQuizTaskItem(),
    buildTasksItem(),
    buildTasksItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 28),
            Builder(
              builder: (context) => Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: ColorManger.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: Icon(Icons.menu, color: Colors.white, size: 30),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.notifications, color: Colors.white, size: 30),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Text('Today Tasks (8)',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Spacer(),
                  TextButton.icon(
                      onPressed: () {
                      },
                      label: Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )
                          ),
                           Icon(
                            Icons. arrow_forward_ios,
                            color: ColorManger.primaryColor,
                            size: 20,

                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
                child: ListView.separated(
              itemBuilder: (context, index) => tasks[index],
              itemCount: tasks.length,
              separatorBuilder: (context, index) => SizedBox(
                height: 18,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
