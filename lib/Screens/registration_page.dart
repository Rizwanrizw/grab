
import 'package:flutter/material.dart';
import 'package:grab/Screens/home_display.dart';
import 'package:grab/Screens/home_page.dart';
import 'package:grab/Screens/location_page.dart';
import 'package:grab/Screens/map_page.dart';
import 'package:grab/Screens/payment_page.dart';

import 'otp.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController emailid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Center(
                    child: Image.network(
                      "https://seeklogo.com/images/G/grab-logo-A2F4D23121-seeklogo.com.png",
                      height: 80,
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                        TextFormField(
                            controller: firstname,
                            keyboardType: TextInputType.text,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black,
                              labelText: "First Name",
                              labelStyle: const TextStyle(color: Colors.white),
                              errorStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                const BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                                 height: 10,
                               ),

                    TextFormField(

                        controller: lastname,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          labelText: "Last Name",
                          labelStyle: const TextStyle(color: Colors.white),
                          errorStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                         controller: emailid,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          labelText: "Email-Id  ",
                          labelStyle: const TextStyle(color: Colors.white),
                          errorStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),


                     SizedBox(
                      height: 20,
                    ),
                    Spacer(),
                    Row(

                      children: [

                        Expanded(

                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[800], // Replace with your desired color
                              ),

                              onPressed: ()  {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomeScreen()
                                          )
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                      ],
                    ),

              ]  ),
              ),




     ] ,),)));
  }
}