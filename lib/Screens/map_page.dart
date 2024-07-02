

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

 LatLng _pGooglePlex = const LatLng(32.4223,-122.0848);

 class MapPage extends StatefulWidget {
   const MapPage({super.key});

   @override
   State<MapPage> createState() => _MapPage();
 }

 class _MapPage extends State<MapPage> {


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: GoogleMap(
         initialCameraPosition: CameraPosition(
           target:_pGooglePlex,
             zoom: 10
         ),
       )

     );
   }
 }
