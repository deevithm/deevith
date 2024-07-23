import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payirseai/data/core/configs/assets/app_vectors.dart';
import 'package:payirseai/presentation/intro/pages/get_started.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState(){
    super.initState();
    redirect();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
        ),
        child: Stack(
          children: [
            
            Align(
              child: SvgPicture.asset(AppVectors.logo),
            )
           ] ,
        ),
      ),
    );
  }
  Future<void> redirect() async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const GetStartedPage()
      )
    );
  }
}