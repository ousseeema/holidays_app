import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holidays_app/utils/dimenssions.dart';
import 'package:holidays_app/view/login/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class infoPage extends StatefulWidget {
  const infoPage({super.key});

  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {
    final introKey = GlobalKey<IntroductionScreenState>();
   void _onIntroEnd() {
    Get.offAll(const loginPage());
  }
   onSkip() => Get.reset();




Widget _buildImage(String assetName, [width = 300]) {
    return Image.asset('images/$assetName', width: width);
  }
       static final    bodyStyle =  TextStyle(fontSize: Dimenssions.font20);

   final  pageDecoration = PageDecoration(
      titleTextStyle:   TextStyle(fontSize: Dimenssions.font20 +Dimenssions.font10, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding:  EdgeInsets.fromLTRB(Dimenssions.LRpadmarg20-2, 0.0, Dimenssions.LRpadmarg20-2, Dimenssions.LRpadmarg20-2),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          key: introKey,
        globalBackgroundColor: Colors.white,
        allowImplicitScrolling: true,
        autoScrollDuration: 7000,
        infiniteAutoScroll: true,
        
        
         pages: [
          PageViewModel(
            title: "Fractional shares",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            image: _buildImage('old.png', Dimenssions.width10*35),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Learn as you go",
            body:
                "Download the Stockpile app and master the market with our mini-lesson.",
            image: _buildImage('old.png', Dimenssions.width10*35),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Kids and teens",
            body:
                "Kids and teens can track their stocks 24/7 and place trades that you approve.",
            image: _buildImage('old.png', Dimenssions.width10*35),
            decoration: pageDecoration,
          ),],
           onDone: () => _onIntroEnd(),
        onSkip: () => onSkip(), // You can override onSkip callback
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
           dotsContainerDecorator: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),),
           back: const Icon(Icons.arrow_back, color: Colors.black),
        skip:  Text('Skip', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: Dimenssions.font20)),
        next: const Icon(Icons.arrow_forward, color: Colors.black),
        done:  Text('Done', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: Dimenssions.font20)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator:  DotsDecorator(
          
          color: Color.fromARGB(255, 0, 0, 0),
         activeColor:   Colors.black, 
         activeSize:Size(Dimenssions.width30,Dimenssions.height10+2) ,
       
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Dimenssions.radius20)),
          ),
        ),
        ),
      )
    );
  }
}