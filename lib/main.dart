import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCVPage(),
    );
  }
}

class MyCVPage extends StatelessWidget {
  const MyCVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CV'), 
        backgroundColor: Colors.blue, 
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'CV Sections',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 73, 67, 67),
                  shape: BoxShape.circle, 
                ),
              ),
              title: const Text('Education'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EducationPage()),
                );
              },
            ),
            ListTile(
              leading: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 73, 67, 67),
                  shape: BoxShape.circle, 
                ),
              ),
              title: const Text('Skills'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SkillsPage()),
                );
              },
            ),
            ListTile(
              leading: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 73, 67, 67),
                  shape: BoxShape.circle, 
                ),
              ),
              title: const Text('Projects'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectsPage()),
                );
              },
            ),
            ListTile(
              leading: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 73, 67, 67),
                  shape: BoxShape.circle, 
                ),
              ),
              title: const Text('Experience'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExperiencePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              child: Text(
                'PV', 
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Paul Vincent Calvo', 
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '123-456-7890', 
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '22-09188@g.batstate-u.edu.ph',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'), 
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Elementary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'School: Faith Kingswood Academy ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Year Graduated: 2015',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Secondary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'School: Bauan Technical Integrated High School',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Year Graduated: 2021',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Skills Page
class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Programming Languages Section
            Text(
              'Programming Languages',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Python',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- Java',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- C++',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- SQL',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            
            Text(
              'Version Control',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Git/GitHub',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20), 

            Text(
              'Mobile App Development',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Flutter/Dart',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// Projects Page
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0), 
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CipherLock',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Description: A Cipher program intended to encrypt or decrypt messages using various ciphers.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Link: https://github.com/PaulVincent-Calvo/CipherLock',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Role: Project Lead',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Treasury Citadel',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Description: A Banking System simulation using Tkinter Designer (Python) and MySQL.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Link: https://github.com/PaulVincent-Calvo/Treasury-Citadel',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Role: Back-end Developer',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Sweet Liberty',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Description: A text-based, windows form game that follows the story of Alpha-Three, a stranded Helldiver on a planet. You have to explore areas and use your critical thinking to use and hold items in order to survive through multiple encounters.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Link: https://github.com/Kryptiku/Sweet-Liberty',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Role: Front-end Developer',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Experience Page
class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: const Center(
        child: Text(
          'This is the Experience section.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}