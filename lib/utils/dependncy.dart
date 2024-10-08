import 'package:get/get.dart';
import 'package:holidays_app/controllers/loginController/loginController.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dependncy {



void initDependncy()async{
 
 //shared preferences
    SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
    Get.lazyPut(() => sharedpreferences, fenix: true);


    // init login and sign up controllers 
    Get.lazyPut(()=> LoginController(), fenix: true);
    



}




}