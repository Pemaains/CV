import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My CV App",
      theme: ThemeData(
        primarySwatch: Colors.blue  
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My CV App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          
            children: [
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 20.0,
                  ),
                    child: Column(
                      children: [
                      CircleAvatar(
                        // backgroundColor: Colors.blue,
                        radius: 50.0,
                        backgroundImage: AssetImage("assets/Pema.jpg"),
                     ),
                     SizedBox(
                      height: 20.0,
                     ),
                     Text("Pema Ringjin Lama",
                     style: TextStyle(
                      fontSize: 25.0,
                     ),
                     ),
                     SizedBox(
                      height: 3.0,
                     ),
                     Text("App and Web Developer",
                     style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                     ),
                     ),
                     SizedBox(
                      height: 7.0,
                     ),
                      Text(
                        "Hello, I am Pema Ringjin Lama. I am a web and app developer. I am currently pursuing my Bachelor degree in Islington College.",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "NotoSans",
                        ),
                        )
                  ],
                ),
              ),
              ),
              Padding(
                padding:EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Social Links",
                  style: TextStyle(
                 fontSize: 20.0,
              ),
              ),
              ),
          
              Card(
                elevation: 2.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () async {
                       final Uri url = Uri.parse("https://www.facebook.com");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      color: Colors.blue,
                      icon: Icon(FontAwesomeIcons.facebook),
                    ),
                     IconButton(
                      onPressed: () async {
                        final Uri url = Uri.parse("https://www.twitter.com");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      color: Colors.blue,
                      icon: Icon(FontAwesomeIcons.twitter),
                    ),
                     IconButton(
                      onPressed: () async {
                        final Uri url = Uri.parse("https://www.instagram.com");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      color: Colors.red,
                      icon: Icon(FontAwesomeIcons.instagram),
                    ),
                     IconButton(
                      onPressed: () async {
                        final Uri url = Uri.parse("https://www.linkedin.com");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      color: Colors.blueGrey,
                      icon: Icon(FontAwesomeIcons.linkedin),
                    ),
                  ],
                ),
              ),
          
               Padding(
                padding:EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Skills",
                  style: TextStyle(
                 fontSize: 20.0,
              ),
              ),
              ),
          
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage:NetworkImage("https://blog.zegocloud.com/wp-content/uploads/2024/03/types-of-web-development-services.jpg"),
                  ),
                  title: Text("Web Development"),
                  subtitle: Text("HTML, CSS, JavaScript"),
                ),
              ),
               Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpHvH2y-wT-lGK24lrQuXNPiPH60wZymu-Q&s"),
                  ),
                  title: Text("App Development"),
                  subtitle: Text("Dart and Flutter"),
                ),
              ),
              SizedBox(
                height: 10.0,
              )
          
            ],
          ),
        ),
      ),
    );
  }
}