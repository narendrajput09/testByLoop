import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textbyloop/app/modules/login_screen/controller/login_screen_controller.dart';
import 'package:textbyloop/src/gen/assets.gen.dart';
import 'package:textbyloop/src/gen/colors.gen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginScreenController controller = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height * 0.3,
              color:  ColorName.orange
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.25),
            decoration: const BoxDecoration(
                color:  ColorName.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
            child: Image.asset(Assets.images.imgSalad.path),
          ),

          Padding(
            padding:  EdgeInsets.only(left: 10,top: size.height * 0.05),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: ColorName.white,),),
          ),
          Column(
            children: [

            ],
          )

        ],
      ),
    );
  }
}