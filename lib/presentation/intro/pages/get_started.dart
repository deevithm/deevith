import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payirseai/data/common/widgets/button/basic_app_button.dart';
import 'package:payirseai/data/core/configs/assets/app_images.dart';
import 'package:payirseai/data/core/configs/assets/app_vectors.dart';
import 'package:payirseai/data/core/configs/theme/app_colors.dart';
import 'package:payirseai/presentation/auth/pages/signup_or_singin.dart';



class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBg),
              ),
            ),
          ),
          // Black opacity layer
          Container(
            color: AppColors.lightBackground.withOpacity(.15),
          ),
          // Content with padding
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 40,),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                    height: 45,
                    width: 45
                    
                    ),
                ),
                const Spacer(),
                const Text(
                  "SMART FARMING",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 22,
                    letterSpacing: 2.0, // Added letter spacing
                  ),
                ),
                const SizedBox(height: 21),
                const Text(
                  "Empowering farmers with AI to cultivate smarter, yield better, and grow sustainably.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SignupOrSinginPage() 
                      )
                    );
                  },
                  title: 'Get Started',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
