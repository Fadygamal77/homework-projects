import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/buttonWidget.dart';
import 'widgets/featureWidget.dart';
import 'widgets/startWidget.dart';
import 'widgets/customCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfffef7ff),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: StartWidget(),
              ),
              SizedBox(height: 22),
              Text(
                "Quick Stats",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customCard(
                      icon: Icons.people,
                      iconColor: Color(0xff8160b9),
                      number: "1,234",
                      label: "Users",
                    ),
                    customCard(
                      icon: Icons.star,
                      iconColor: Colors.orange,
                      number: "4.8",
                      label: "Rating",
                    ),
                    customCard(
                        icon: Icons.show_chart,
                        number: "98%",
                        label: "Success",
                        iconColor: Colors.blue)
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Features",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 24),
              featureWidget(
                containerColor: Color(0xffefebf8),
                icon: Icons.speed,
                color: Color(0xff8160b9),
                title: "Fast performance",
                subtitle: "Lightning fast app performance",
              ),
              SizedBox(height: 10),
              featureWidget(
                containerColor: Color(0xffe9f4fd),
                icon: Icons.security,
                color: Color(0xff4e9bff),
                title: "Secure",
                subtitle: "Your data is safe with us",
              ),
              SizedBox(height: 10),
              featureWidget(
                containerColor: Color(0xfffff4df),
                icon: Icons.palette,
                color: Colors.orange,
                title: "Beautiful UI",
                subtitle: "Modern and clean design",
              ),
              SizedBox(height: 120),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                buttonWidget(
                  color: Colors.blue,
                  text: "Settings",
                ),
                buttonWidget(color: Colors.orange, text: "Profile")
              ])
            ],
          ),
        ),
      ),
    );
  }
}
