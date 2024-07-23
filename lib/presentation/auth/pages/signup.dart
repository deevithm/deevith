import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payirseai/data/common/widgets/appbar/app_bar.dart';
import 'package:payirseai/data/common/widgets/button/basic_app_button.dart';
import 'package:payirseai/data/core/configs/assets/app_vectors.dart';
import 'package:payirseai/data/models/auth/create_user_req.dart';
import 'package:payirseai/domain/usecases/auth/signup.dart';
import 'package:payirseai/presentation/auth/pages/signin.dart';
import 'package:payirseai/presentation/home/pages/home.dart';
import 'package:payirseai/service_locator.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 35,
          width: 35,
          
        )
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 50
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(
              height: 20,
            ),
            _fullNameField(context),
             const SizedBox(height: 15),
            _emailFeild(context),
            const SizedBox(height: 15,),
            _passwordField(context),
            const SizedBox(height: 15,),
            BasicAppButton(
              onPressed: () async {
                var result = await sl<SignupUseCase>().call(
                  params: CreateUserReq(
                    fullName: _fullName.text.toString(),
                    email: _email.text.toString(),
                    password: _password.text.toString()
                  ) 
                );
                result.fold(
                  (l){
                    var snackbar = SnackBar(content: Text(l));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  (r){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const HomePage() ),
                      (route) => false);
                  });
              },
              title: 'Create Account'
              ),
          ],
        ),
      ),
    );
  }
  Widget _registerText() {
    return const Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30
      ),
    );
  }

  Widget _fullNameField(BuildContext context){

    return TextField(
      controller: _fullName,
      decoration: const InputDecoration(
        hintText: 'Full Name'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
        ),
      );
    
  }

  Widget _emailFeild(BuildContext context){

    return TextField(
      controller: _email,
      decoration: const InputDecoration(
        hintText: 'Enter Email'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
        ),
      );
    
  }

  Widget _passwordField(BuildContext context){

    return TextField(
      controller: _password,
      decoration: const InputDecoration(
        hintText: 'Password'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
        ),
      );
    
  }

  Widget _signinText(BuildContext context){

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Do You Have An Account?',
            style: TextStyle(
              fontWeight: FontWeight.w500,fontSize: 14
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => SigninPage()));
            }, 
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.blue
              ),
            ))
        ],
      ),
    );

  }


  
}