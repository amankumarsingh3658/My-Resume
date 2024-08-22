import 'package:flutter/material.dart';
import 'package:reportcard/Screens/openProjectScreen.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

List<String> projectName = [
  "Covid Tracker App",
  "Food Recipe App",
  "Google Keep Clone",
  "Mausam - The Weather App",
  "Shopping Cart App",
  "GetxMvvm",
  "Movies App",
  "News App"
];

List<String> projectDescription = [
  "This project is a COVID-19 Tracker app built using Flutter and the India COVID-19 API. The app provides real-time updates on COVID-19 cases across India, offering a user-friendly interface to track the number of confirmed cases, recoveries, and fatalities at both national and state levels.",
  "This is a Food Recipe App built using Flutter and the Edamam API. The app allows users to explore a vast collection of recipes based on various ingredients, dietary preferences, and cuisine types. It features a clean and intuitive interface, making it easy for users to search for recipesand view detailed nutritional information.",
  "This App is a simple yet functional clone of Google Keep, developed using Flutter and Sqflite. The app demonstrates how to implement CRUD (Create, Read, Update, Delete) operations to manage notes locally on a device.",
  "This Weather App is a sleek, modern mobile application built using Flutter, a powerful UI toolkit from Google, and the OpenWeather API to provide real-time weather information. The app allows users to check the current weather conditions, forecasts, and other meteorological data for any city around the world.",
  "Shopping Cart App This project is a simple Shopping Cart application built using Flutter. It leverages SQLite for local data storage and uses the Provider package for state management.",
  "Login App is a simple, lightweight app developed using Flutter and the Getx framework, following the MVVM (Model-View-ViewModel) architecture pattern. The app demonstrates core concepts such as state management, dependency injection, routing, and memory management using Getx.",
  "This is a Flutter-based mobile application that allows users to explore a vast collection of movies with a clean and modern interface. The app utilizes a third-party Movies API to fetch and display real-time movie data.",
  "This is a simple yet powerful news application built using Flutter and integrated with the NewsAPI. The app allows users to browse the latest news articles from various sources, view detailed content within a webview, and enjoy a seamless reading experience."
];

List<String> projectUrl = [
  "https://github.com/amankumarsingh3658/Covid-Tracker-App",
  "https://github.com/amankumarsingh3658/Food-Recipe-App",
  "https://github.com/amankumarsingh3658/GoogleKeepsClone",
  "https://github.com/amankumarsingh3658/Mausam-The-Weather-App",
  "https://github.com/amankumarsingh3658/Shopping-Cart",
  "https://github.com/amankumarsingh3658/GetxMvvm",
  "https://github.com/amankumarsingh3658/Movies-App",
  "https://github.com/amankumarsingh3658/News-App"
];

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Projects'),
        ),
        body: Expanded(
          child: ListView.builder(
              itemCount: projectName.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProjectWebViewScreen(url: projectUrl[index])));
                  },
                  child: Card(
                    child: ListTile(
                        trailing: Column(
                          children: [
                            Text("Tap To Open"),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(Icons.laptop_chromebook_outlined)
                          ],
                        ),
                        title: Text(projectName[index]),
                        subtitle: Text(projectDescription[index])),
                  ),
                );
              }),
        ));
  }
}
