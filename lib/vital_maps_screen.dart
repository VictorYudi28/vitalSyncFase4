import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VitalMapsScreen extends StatefulWidget {
  @override
  _VitalMapsScreenState createState() => _VitalMapsScreenState();
}

class _VitalMapsScreenState extends State<VitalMapsScreen> {
  GoogleMapController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vital Maps')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-23.55052, -46.633308), // São Paulo
          zoom: 12,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on),
        onPressed: () {
          // ação para botão, se quiser
        },
      ),
    );
  }
}
