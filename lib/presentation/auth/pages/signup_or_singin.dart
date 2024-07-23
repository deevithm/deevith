import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payirseai/data/common/helpers/is_dark_mode.dart';
import 'package:payirseai/data/common/widgets/appbar/app_bar.dart';
import 'package:payirseai/data/common/widgets/button/basic_app_button.dart';
import 'package:payirseai/data/core/configs/assets/app_vectors.dart';
import 'package:payirseai/presentation/auth/pages/signin.dart';
import 'package:payirseai/presentation/auth/pages/signup.dart';

class SignupOrSinginPage extends StatelessWidget {
  const SignupOrSinginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          const BasicAppBar(),
          Align(
            alignment: Alignment.center,
            child: Padding(
              
              padding: const EdgeInsets.symmetric(
                horizontal: 40
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  SvgPicture.asset(
                    AppVectors.signuporin
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Grow With Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Empower Your Farm, Empower Yourself',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => SignupPage()
                              )
                            ); 
                          } 
                        , title: 'Register'),
                      ),
                      const SizedBox(width: 30,),
                      Expanded(
                        flex: 1,
                        child: TextButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => SigninPage()
                              )
                            );
                        },
                         child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: context.isDarkMode ? Colors.white : Colors.black
                          ),
                          ),
                        ),
                      )
                    ],
                  )
                ]
              
              ),
            ),

          )
        ],
      )

    );
  }
}