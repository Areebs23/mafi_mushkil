import 'package:flutter/material.dart';
import 'package:mafi_mushkil/security%20verification/confirm.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({super.key});

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Icon(Icons.arrow_back_ios,size: 20,),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFC0FF00),
                ),
                child: Icon(Icons.message,color: Colors.black,size: 40,),
              ),
              SizedBox(height: 30,),
              Text("Enter the Code to Continue",style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,
              ),textAlign: TextAlign.center,),
              SizedBox(height: 7,),
              Text("A Verification code has been sent\nto +92256358375 via SMS",style: TextStyle(
                color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12,
              ),textAlign: TextAlign.center,),
              SizedBox(height: 50,),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFF0F0F0) ,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ConfirmScreen()),
                            );
                          },
                          child: Text("Enter Code here",style: TextStyle(color: Colors.grey,
                              fontSize: 15),),
                        ),
                      ),
                    ),
              SizedBox(height: 50,),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text('Verify',style: TextStyle(color: Colors.white,
                      fontSize: 16),),
                ),
              ),
              SizedBox(height: 12,),
              Center(
                child: Text('Resend code in 59 sec',style: TextStyle(color: Colors.grey,
                    fontSize: 15),),
              )
            ],
          ),
        )
    );
  }
}
