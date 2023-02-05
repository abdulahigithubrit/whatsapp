import 'package:flutter/material.dart';
import 'package:whatsappuntitled3/NewScreen/CountryModel.dart';
import 'package:whatsappuntitled3/NewScreen/OtpScreen.dart';

import 'CountryPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String countryname="somalia";
  String countrycode="+2526";
  TextEditingController _controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Enter your phone number",
        style: TextStyle(color: Colors.teal,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        wordSpacing: 1,),),
        centerTitle: true,

        actions: [
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text("Whatsapp willnsend on sms message to verify your number",
            style: TextStyle(fontSize: 13.5),),
            SizedBox(height: 5,),
            Text("what's my number ",
              style: TextStyle(fontSize: 12.8,color: Colors.cyan[800],),),
              SizedBox(height: 15,),
            countryCard(),
            SizedBox(height: 5,),
            number(),
            Expanded(child: Container()),

            InkWell(
              onTap: (){
          if(_controller.text.length<10)
            {
              showMydilogue1();
            }
          else{
            showMydilogue();
          }

              },
              child: Container(
                color: Colors.tealAccent[400],
                height: 40,
                width: 80,
                child: Center(child: Text("NEXT",style: TextStyle(fontWeight: FontWeight.w600),)),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),

    );
  }
  Widget countryCard(){
    return InkWell(
      onTap: (){
        Navigator.push( context,MaterialPageRoute(builder:
            (builder) => CountryPage(setCountryData:setCountryDate)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.teal,
              width: 1.8,
            )
          )
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(child:
              Center(child: Text(countryname,style: TextStyle(fontSize: 16),))),
            ),
            Icon(Icons.arrow_drop_down,
            color: Colors.teal,)
          ],
        ),
      ),
    );
  }
  Widget number(){
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      height: 38,
      padding: EdgeInsets.symmetric(vertical: 1),
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.teal,
                      width: 1.8,
                    )
                )
            ),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Text("+",
                style: TextStyle(fontSize: 18),),
                SizedBox(width: 15,),
                Text(countrycode.substring(1),style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
          SizedBox(width: 30,),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.teal,
                      width: 1.8,
                    )
                )
            ),
            width: MediaQuery.of(context).size.width/1.5-100,
            child: TextFormField(
              controller:  _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
              hintText: "phone number"),
            ),
          )
        ],

      ),
    );
  }
  void setCountryDate(CountryModel countryModel){
    setState(() {
      countryname=countryModel.name;
      countrycode=countryModel.code;

    });
    Navigator.pop(context);

  }
  Future<void> showMydilogue(){
    return showDialog(context: context, builder: (BuildContext context){
      return  AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("We will veryfying your phone Number",style: TextStyle(fontSize: 14),),
              SizedBox(height: 10,),
              Text(countrycode + "" + _controller.text,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),
              Text("Is this ok would you like to edit the number?",style: TextStyle(fontSize: 13.5),)
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Edit")),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("ok"))
        ],
      );
    });
  }
  Future<void> showMydilogue1(){
    return showDialog(context: context, builder: (BuildContext context){
      return  AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("There is no number you entered",style: TextStyle(fontSize: 14),),

            ],
          ),
        ),
        actions: [

          TextButton(onPressed: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (builder)=>OtpScreen(
              coutryCode: countrycode,
              number: _controller.text,
            )));
          }, child: Text("ok"))
        ],
      );
    });
  }
}
