import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spa/helpers/basic_button.dart';

class Service extends StatefulWidget {
  static String id = 'service_view';
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {

  List<Widget> getPickerItems() {
    List<Text> pickerItems = [];

    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }
    return pickerItems;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Service'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
            child: Card(
              elevation: 10,
              color: Colors.black45,
              child: Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/spa01.jpg'),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Service Title',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'serviceDescription',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text('Sission Time',style: TextStyle(fontSize: 18),),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 120,right: 120),
            child: Card(
              color: Colors.black26,
              child: Container(
                height: 100.0,
                alignment: Alignment.center,
                color: Colors.amber.withOpacity(.6),
                child: CupertinoPicker(
                    backgroundColor: Colors.black12,
                    itemExtent: 40,
                    onSelectedItemChanged: (selectedIndex) {},
                    children: getPickerItems()
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 30,top: 30),
            child: Text('Date and Time',style: TextStyle(fontSize: 18),),
          ),


          Row(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Card(
                  color: Colors.black26,
                  child: Container(
                    height: 180.0,
                    width: MediaQuery.of(context).size.width*.45,
                    alignment: Alignment.center,
                    color: Colors.amber.withOpacity(.6),
                    child: CupertinoPicker(
                        backgroundColor: Colors.black12,
                        itemExtent: 40,
                        onSelectedItemChanged: (selectedIndex) {},
                        children: getPickerItems()
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Card(
                  color: Colors.black26,
                  child: Container(
                    height: 180.0,
                    width: MediaQuery.of(context).size.width*.45,
                    alignment: Alignment.center,
                    color: Colors.amber.withOpacity(.6),
                    child: CupertinoPicker(
                        backgroundColor: Colors.black12,
                        itemExtent: 40,
                        onSelectedItemChanged: (selectedIndex) {},
                        children: getPickerItems()
                    ),
                  ),
                ),
              ),


            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: BasicButton(
              buttonColor: Colors.amber.withOpacity(.6),
              buttonHeight: 50,
              buttonWidth: double.infinity,
              buttonText: 'submit',
              onPressed: (){},
            ),
          ),


        ],
      ),
    );
  }
}



const List<String> currenciesList = [
  '15 m',
  '30 m',
  '45 m',
  '60 m',
  '90 m',
  '120 m',
];