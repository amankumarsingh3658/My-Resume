import 'package:flutter/material.dart';
import 'package:reportcard/Screens/projectsScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final height = mq.height;
    final width = mq.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "My Portfolio",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/60209451?v=4'),
                    child: Icon(Icons.person_3),
                    radius: 35,
                  ),
                  SizedBox(
                    width: width * 0.08,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aman",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.school,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Text(
                          "Ajay Kumar Garg Engineering College,\nGhaziabad",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),SizedBox(
                      height: height * 0.01,
                    ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Icon(
                    //       Icons.laptop,
                    //       size: 30,
                    //     ),
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text(
                    //       "Covid Tracker App",
                    //       style: TextStyle(fontSize: 20),
                    //     )
                    //   ],
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_city,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Ghaziabad",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.email,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "amankumarsingh1969@gmail.com ",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "8851138716",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Center(
                        child: Text(
                      "About Me",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                        "Results-driven B.Tech CS student with a strong foundation in computer science, programming, and software development. Proficient in SQL, Flutter, and C programming. Skilled problem solver and collaborator with excellent communication and teamwork abilities. Committed to staying current with industry trends and eager to contribute technical expertise to drive organizational success."),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProjects()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.tealAccent),
                        child: Center(
                            child: Text(
                          'My Projects',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16,color: const Color.fromARGB(255, 27, 56, 1)),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: Text(
                        "Created by Aman Kumar Singh",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
