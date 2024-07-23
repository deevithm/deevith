import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payirseai/data/common/widgets/appbar/app_bar.dart';
import 'package:payirseai/data/core/configs/assets/app_vectors.dart';
import 'package:payirseai/presentation/choose_module/pages/market_insights.dart';
import 'package:payirseai/presentation/choose_module/pages/prediction.dart';
import 'package:payirseai/presentation/choose_module/pages/weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        hideBack: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 35,
          width: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
            _homeCardOne(context),
            const SizedBox(height: 40,),
            _homeCardTwo(context),
            const SizedBox(height: 40,),
            _homeCardThree(context),
            const SizedBox(height: 40,),
            _homeCardFour(context),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Widget _homeCardOne(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 180,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffFFFFFF),
              Color(0xff5FD5E5),
            ],
            stops: [
              0.1,
              0.76,
            ],
            begin: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7
          )] 
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const WeatherPage(),
              ),
            );
          },
          child: const Column(
            children: [
              Row(
                children: [
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
                  child: Text(
                    'Predict Yeild',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,                 
                       ),
                  ),
                  
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:30,),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
                
              ),
          
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: Text(
                  'Predict, plant, and prosper with smart yield insights.',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),),
            )
          ]  
          ),
        ),
      ),
    );
  }

  Widget _homeCardTwo(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 180,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffFFFFFF),
              Color(0xff7BFF90),
            ],
            stops: [
              0.1,
              0.76,
            ],
            begin: Alignment.topLeft,
            
          ),
          
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7
          ),
          ],
           
        ),
        
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const PredictionPage(),
              ),
            );
          },
          
          
        ),
        
      ),
    );
  }

  Widget _homeCardThree(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 180,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffFFFFFF),
              Color(0xffFF9E80),
            ],
            stops: [
              0.1,
              0.76,
            ],
            begin: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7
          )] 
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const MarketInsightsPage(),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _homeCardFour(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 180,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffFFFFFF),
              Color(0xff5FD5E5),
            ],
            stops: [
              0.1,
              0.76,
            ],
            begin: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7
          )] 
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const PredictionPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}