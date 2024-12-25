import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget{
  
  late double _deviceHeight, _deviceWidth;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(child:Container(
        height: _deviceHeight,
        width: _deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
        child: Stack(
          children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _bookRideWidget(),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: _astroImageWidget(),
            )
          ],
        )
      ),
    ),
  );
}

  Widget _pageTitle(){
    return const Text("#GoMoon",
    style: TextStyle(color:Colors.white,
    fontSize: 70,
    fontWeight: FontWeight.w800,
    ),
    );
  }

  Widget _astroImageWidget(){
    return Container(
      height: _deviceHeight*0.6,
      width: _deviceWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("asserts/images/astro_moon.png"),
          fit:BoxFit.fill,
          ),
        ),
      );
  }

  Widget _destinationDropDownWidget(){
    return CustomeDropDownButtonClass(
      values: [
        'James Webb Station',
        'Preneure Station',
        ],
      width: _deviceWidth);
  }

  

  Widget _travellersInformationWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomeDropDownButtonClass(
          values: [
            'Economy',
            'First Class',
            'Business'
            ],
          width: _deviceWidth*0.45),
        CustomeDropDownButtonClass(
      values: [
        '1',
        '2',
        '3',
        '4'
        ],
      width: _deviceWidth*0.40)
      ],
    );
  }

  Widget _bookRideWidget(){
    return Container(
      height: _deviceHeight*0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton(){
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight*0.001),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(10), 
      ),
      width: _deviceWidth,
      child: MaterialButton(onPressed: (){},
      child: Text('Book Ride',
      style: TextStyle(color: Colors.black,),
      ),
      ),
    );
  }
}