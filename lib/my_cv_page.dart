import 'package:flutter/material.dart';
import 'education_page.dart';
import 'skills_page.dart';
import 'projects_page.dart';

class MyCVPage extends StatelessWidget {
  const MyCVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact Information'), 
        backgroundColor: const Color(0xFF011627), 
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20,
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF465159),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 150,
              color: const Color(0xFF011627),
              child: const Padding(
                padding: EdgeInsets.all(60),
                  child: Center(
                    child: Text(
                      'CV Sections',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
            ),
            ListTile(
              leading: const Icon(Icons.school, color: Colors.black),
              title: const Text(
                'Education',
                style: TextStyle(color: Colors.white)
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EducationPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.build, color: Colors.black),
              title: const Text(
                'Skills',
                style: TextStyle(color: Colors.white)
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SkillsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logo_dev_rounded, color: Colors.black),
              title: const Text(
                'Projects',
                style: TextStyle(color: Colors.white)
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFF465159),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/pfp.jpg'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Paul Vincent Calvo', 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  )
                ]
              )
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: const <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.email, size: 30, color: Colors.black),
                      SizedBox(height: 10),
                      Text(
                        'paulvincentcalvo.pr@gmail.com',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.phone, size: 30, color: Colors.black),
                      SizedBox(height: 10),
                      Text(
                        '0966 8860 075',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.code, size: 30, color: Colors.black),
                      SizedBox(height: 10),
                      Text(
                        'github.com/PaulVincent-Calvo ',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.business, size: 30, color: Colors.black),
                      SizedBox(height: 10),
                      Text(
                        'linkedin.com/in/paul-vincent-calvo/',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}