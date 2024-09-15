import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimations extends StatefulWidget {
  const LottieAnimations({super.key});

  @override
  State<LottieAnimations> createState() => _LottieAnimationsState();
}

class _LottieAnimationsState extends State<LottieAnimations> {
  bool refresh=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.redAccent,
        title: Text(
          'Lottie Animations',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Asset Animations:',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Lottie.asset(
                  'assets/animations/auth.json',
                  width: 250,
                  height: 250,
                  // repeat: false
                  // reverse: true

              ),
              SizedBox(height: 15,),
              Text(
                'Network Animations:',
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Lottie.network(
                animate: refresh,
                'https://lottie.host/3e896b16-5cf3-4e98-a586-fe2ea0b6a007/tjInNKitPt.json',
                width: double.infinity,
                height: 350,

              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        shape: CircleBorder(),
        onPressed: (){
          setState(() {
            if(refresh==true){
              refresh=false;
            }else if(refresh==false){
              refresh=true;
            }
          });
        },
        child: refresh==true?Icon(Icons.pause,color: Colors.white,):
        Icon(Icons.play_arrow,color: Colors.white,),
      ),
    );
  }
}
