import 'package:bookie_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

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
    animationController=  AnimationController(
        vsync:this,
        duration: Duration(seconds: 1) );
    slidingAnimation= Tween<Offset>(
        begin: const Offset(0, 10) , end: Offset.zero)
        .animate(animationController);
    animationController.forward();
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
                 child: Text('Read Free Books',textAlign: TextAlign.center,
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
               );
             }),


      ],
    );
  }
}
