import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holidays_app/controllers/loginController/loginController.dart';
import 'package:holidays_app/utils/appColor.dart';
import 'package:holidays_app/utils/dimenssions.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], 
        body: SafeArea(
            child: SizedBox(
      height: Dimenssions.height,
      width: Dimenssions.width,
      child: Stack(
        children: [
          
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: Dimenssions.height - Dimenssions.height20 * 12,
              //container of the login and sign up buttons
              child: Container(
                height: Dimenssions.height20 * 10,
                decoration: BoxDecoration(
                  color: AppColors.loginColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimenssions.radius30),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: Dimenssions.width20 * 3,
                        right: Dimenssions.width20 * 3,
                        bottom: Dimenssions.height10 * 1.5,
                        child: Image.asset(
                          "images/holidays_logo.png",
                          height: Dimenssions.height20 * 4,
                        )),
                    Positioned(
                        left: Dimenssions.width30,
                        bottom: Dimenssions.height20,
                        child: SizedBox(
                          height: Dimenssions.height10 * 3,
                          width: Dimenssions.width - Dimenssions.width30,
                          child: TabBar(
                              indicatorSize: TabBarIndicatorSize.label,
                              controller: tabController,
                              labelColor: Colors.white,
                              indicatorColor: Colors.white,
                              dividerHeight: 0,
                              unselectedLabelColor: Colors.white,
                              tabs: const [
                                // login button
                                Tab(
                                  text: "Sign In",
                                ),
                                Tab(text: "Sign Up")
                              ]),
                        )),
                  ],
                ),
              )),
         // the following code is for the form in the signin and the signup
         GetBuilder<LoginController>(builder: (logincontroller){
            return  Positioned(
              top: Dimenssions.height20 * 11,
              left: 0,
              right: 0,
              bottom: 0,
              child:
                 SizedBox(
                  height: Dimenssions.height20*40,
                    child: TabBarView(controller: tabController, children: [
                  // sign in card
                  Container(
                   color: Colors.grey[100],
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: Dimenssions.height20*3,),
                          SizedBox(
                            height: Dimenssions.height20*4,
                            width: Dimenssions.width-Dimenssions.width30,
                            child: TextField(
                              
                              decoration: const InputDecoration(
                                
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                   borderSide:const  BorderSide(color: Colors.black, width: 1.5)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  
                                   borderSide:const  BorderSide(color: Colors.black, width: 1.5)
                                ),
                                disabledBorder:OutlineInputBorder(
                                  
                                  borderSide:const  BorderSide(color: Colors.black, width: 1.5)
                                )
                              ),
                              controller: logincontroller.emailController,
                                                
                            ),
                          ),
                          SizedBox(
                            height: Dimenssions.height20,
                          ),
                          SizedBox(
                            height: Dimenssions.height20*4,
                            width: Dimenssions.width-Dimenssions.width30,
                            child: TextField(
                              controller: logincontroller.passwordController,
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                   borderSide:const  BorderSide(color: Colors.black, width: 1.5)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  
                                   borderSide:const  BorderSide(color: Colors.black, width: 1.5)
                                ),
                                disabledBorder:OutlineInputBorder(
                                  
                                  borderSide:const  BorderSide(color: Colors.black, width: 1.5)
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // sign up card
                  Card(
                    color: Colors.grey[300],
                  )
                ]))
              );
         
          }),
         

        ],
      ),
    )));
  }
}
