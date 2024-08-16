import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holidays_app/utils/appColor.dart';
import 'package:holidays_app/utils/dimenssions.dart';
import 'package:holidays_app/view/info.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  bool _isExpanded = false;
   bool? isClient ;
  bool? isTransporteur ; 
  @override
  void initState() {
    super.initState();
   

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _isExpanded = !_isExpanded;
      });
    });

   // Future.delayed(const Duration(milliseconds: 3500), () {
     //    Get.offAll(const infoPage()) ;});
  
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedContainer(
            decoration: BoxDecoration(
             color: Colors.deepPurple[100],
             //shape: BoxShape.circle,
             borderRadius: BorderRadius.circular(_isExpanded ? 0 : 300),
             gradient:const  LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(19, 15, 65, 1),
                Color.fromRGBO(62, 55, 122, 0.8),
                Color.fromRGBO(89, 81, 154, 0.612),
               
              ],)
            ),
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        height: _isExpanded ?Dimenssions.height: 150,
        width: _isExpanded ? Dimenssions.width : 150,
     
        child: Center(
          child:  Image.asset("images/spalsh.png" , width: Dimenssions.width30*7, height: Dimenssions.height20*12,color: AppColors.iconColor,)
        ),
      )),
    );
  }
}
