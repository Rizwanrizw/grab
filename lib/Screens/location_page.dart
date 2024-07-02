import 'package:flutter/material.dart';
import 'package:grab/Screens/registration_page.dart';


class LocationPage extends StatefulWidget {
  @override
 State <LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 50.0,
            left: 15.0,
            right: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your current location',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                  prefixIcon: IconButton(
                    icon: Icon(Icons.home),color: Colors.black,
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                ),
              ),
            ),
          ),
      Positioned(
        top: 130.0,
        left: 15.0,
        right: 15.0,
        child:
       Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 1.0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter your destination',
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
            prefixIcon: IconButton(
              icon: Icon(Icons.location_on_outlined),
              onPressed: () {},
              iconSize: 30.0,
            ),
          ),
        ),
       ),),


    Positioned(
    top: 800.0,
    left: 15.0,
    right: 15.0,
    child:
        Row(
          children: [

            Expanded(
                child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[800]// Replace with your desired color
                  ),

                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           ),
                    // );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),

          ],
        )


    ) ],
      ),
    );
  }
}
