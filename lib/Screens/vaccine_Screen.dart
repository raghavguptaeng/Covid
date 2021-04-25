import 'package:covid/Screens/vArguments.dart';
import 'package:covid/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VaccineScreen extends StatefulWidget {
  static String VScreen = '/vscreen';
  String Image;
  String Name;
  String Manifacture;
  String About;
  String Price;
  VaccineScreen({this.Image,this.Name,this.About,this.Manifacture,this.Price});
  @override
  _VaccineScreenState createState() => _VaccineScreenState();
}

class _VaccineScreenState extends State<VaccineScreen> {
  int quantity = 0;
  List qtyButton = [true, false, false]; // used to make quantity buttons
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: ScreenBackgroundcolor,
      appBar: AppBar(
        backgroundColor: ScreenBackgroundcolor,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF4C4D51),
                          Color(0xff434240),
                        ],
                      ),
                    ),
                    child: Hero(
                      tag: widget.Name,
                      child: Image.asset(
                        'assets/images/${widget.Image}',
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.Name,
                      style: headTextStyle.copyWith(
                          fontSize: 50, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'By ${widget.Manifacture}',
                    style: subTextStyle.copyWith(fontSize: 25),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        widget.About,
                        style: subTextStyle.copyWith(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.90,
                  ),
                ),
                Center(
                  child: Text(
                    '\$${widget.Price}',
                    style: priceTextStyle.copyWith(fontSize: 50),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          for(int i=0 ; i<3 ; ++i){
                            qtyButton[i] = false;
                          }
                          qtyButton[0] = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Center(
                            child: Text(
                              '50 ml',
                              style: subTextStyle.copyWith(
                                  color: (qtyButton[0])
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                        decoration: quantityButtonStyle.copyWith(
                          color:
                              (qtyButton[0]) ? Colors.white : Color(0xff535356),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          for(int i=0 ; i<3 ; ++i){
                            qtyButton[i] = false;
                          }
                          qtyButton[1] = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                            '100 ml',
                            style: subTextStyle.copyWith(
                                color: (qtyButton[1])
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 30),
                          ),
                        ),
                        decoration: quantityButtonStyle.copyWith(
                          color:
                              (qtyButton[1]) ? Colors.white : Color(0xff535356),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          for(int i=0 ; i<3 ; ++i){
                            qtyButton[i] = false;
                          }
                          qtyButton[2] = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                            '150 ml',
                            style: subTextStyle.copyWith(
                                color: (qtyButton[2])
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 30),
                          ),
                        ),
                        decoration: quantityButtonStyle.copyWith(
                          color:
                              (qtyButton[2]) ? Colors.white : Color(0xff535356),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity > 0) quantity--;
                          });
                        },
                        child: Container(
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: Colors.white,
                          ),
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xff6E6E6E),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          quantity.toString(),
                          style: headTextStyle.copyWith(fontSize: 30),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Container(
                          child: Icon(FontAwesomeIcons.plus),
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag_outlined,size: 30,),
                        Text('Add To Basket',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ImpColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
