import 'package:bookie_app/constants.dart';
import 'package:bookie_app/core/utils/assets.dart';
import 'package:bookie_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  const [
         CustomAppBar(),
      ],
    );
  }
}
