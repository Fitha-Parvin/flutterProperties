//
// import 'package:flutter/material.dart';
//
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// import 'package:geolocator/geolocator.dart';
// void main (){runApp(MaterialApp(
//   home:UserMapInfo() ,));}
// class UserMapInfo extends StatefulWidget {
//   const UserMapInfo({Key? key}) : super(key: key);
//
//   @override
//   State<UserMapInfo> createState() => _UserMapInfoState();
// }
//
// class _UserMapInfoState extends State<UserMapInfo> {
//
//   late GoogleMapController mapController;
//
//   LatLng? _currentPosition;
//   bool _isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     getLocation();
//   }
//
//   getLocation() async {
//     LocationPermission permission;
//     permission = await Geolocator.requestPermission();
//
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     double lat = position.latitude;
//     double long = position.longitude;
//
//     LatLng location = LatLng(lat, long);
//
//     setState(() {
//       _currentPosition = location;
//       _isLoading = false;
//     });
//   }
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Map'),
//       ),
//       body: _isLoading ?
//       Center(child:CircularProgressIndicator()) :
//     //   GoogleMap(
//     //     onMapCreated: _onMapCreated,
//     //     initialCameraPosition: CameraPosition(
//     //      // target: _currentPosition,
//     //       zoom: 16.0,
//     //     ),
//     //   ),
//     // );
//   }
// }