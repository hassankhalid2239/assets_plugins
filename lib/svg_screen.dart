import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class SvgScreen extends StatelessWidget {
  const SvgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.redAccent,
        title: Text(
          'Svgs',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Asset Svg:',
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              SvgPicture.asset(
                'assets/svg/svg1.svg',
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              SizedBox(height: 15,),
              SvgPicture.asset(
                'assets/svg/svg2.svg',
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              SizedBox(height: 15,),
              SvgPicture.asset(
                'assets/svg/svg3.svg',
                height: 100,
                width: 100,
                // color: Colors.redAccent,
              ),
              SizedBox(height: 15,),

            ],
          ),
        ),
      ),
    );
  }
}
