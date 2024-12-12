import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85; // 85% of screen width

    return Scaffold(
      backgroundColor: const Color(0xFF465159),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Skills'),
        backgroundColor: const Color(0xFF011627),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Center( // Wrap the entire body in Center to center all containers
        child: SingleChildScrollView( // Add scrolling to ensure content fits on smaller screens
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFCDD0CE),Color(0xFF11202F)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, 
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Vertically center the contents
              crossAxisAlignment: CrossAxisAlignment.center, // Horizontally center the containers
              children: [
                // Programming Languages
                Container(
                  width: containerWidth, // Set width here
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B1E20),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.code, size: 30, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        'Programming Languages',
                        style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        '- Python',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '- Java',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '- C++',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '- C#',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '- SQL',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Version Control
                Container(
                  width: containerWidth, // Set width here
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B1E20),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.vpn_key, size: 30, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        'Version Control',
                        style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        '- Git/GitHub',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Mobile App Development
                Container(
                  width: containerWidth, // Set width here
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B1E20),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.phone_android, size: 30, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        'Mobile App Development',
                        style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        '- Flutter/Dart',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
