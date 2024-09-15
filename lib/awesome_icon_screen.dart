import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AwesomeIconScreen extends StatelessWidget {
  const AwesomeIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.redAccent,
        title: Text(
          'Font Awesome Icon',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FaIcon(
                FontAwesomeIcons.linkedin,
                size: 80,
                color: Colors.blue,
              ),
              SizedBox(height: 15,),
              FaIcon(
                FontAwesomeIcons.pinterest,
                size: 80,
                color: Colors.red,
              ),
              SizedBox(height: 15,),
              FaIcon(
                FontAwesomeIcons.snapchat,
                size: 80,
                color: Colors.yellow,
              ),
              SizedBox(height: 15,),

            ],
          ),
        ),
      ),
    );
  }
}
