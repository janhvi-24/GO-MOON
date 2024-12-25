import 'package:flutter/material.dart';


class CustomeDropDownButtonClass extends StatelessWidget{
  List<String> values;
  double width;

  CustomeDropDownButtonClass({required this.values,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      width: width,
      decoration:BoxDecoration(color: Color.fromRGBO(53, 53, 53, 0.1),
      borderRadius: BorderRadius.circular(10,),
      ),
      child: DropdownButton(
      value: values.first,
      onChanged: (_) {},
      items: values.map(
          (e){
            return DropdownMenuItem(
              child: Text(e), 
              value: e, 
              );
            },
          ).toList(),
          underline: Container(),
          dropdownColor:const Color.fromRGBO(53, 53, 53, 0.1),
          style: TextStyle(
            color:Colors.white,
          ),
        ),
      );
  }
}