import 'package:bookie_app/constants.dart';
import 'package:bookie_app/core/utils/assets.dart';
import 'package:bookie_app/features/home/presentation/views/home_view.dart';
import 'package:bookie_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {

    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),

         AnimatedBuilder(animation: slidingAnimation,
             builder: (context,_){
              return SlideTransition(
                 position: slidingAnimation,
                 child: Text('Read Free Books',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 25,
                       color: splashTextColor),),
               );
             }),


      ],
    );
  }
  void initSlidingAnimation(){
  animationController=  AnimationController(
  vsync:this,
  duration:  const Duration(seconds: 1) );
  slidingAnimation= Tween<Offset>(
  begin: const Offset(0, 10) , end: Offset.zero)
      .animate(animationController);
  animationController.forward();
}
void navigateToHome(){
    Future.delayed(Duration(seconds: 3), (){
      Get.to(()=> const HomeView(),
      transition: Transition.fade,duration:kTransitionDuration );
        });

}
}
