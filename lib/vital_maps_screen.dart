import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VitalMapsScreen extends StatefulWidget {
  @override
  _VitalMapsScreenState createState() => _VitalMapsScreenState();
}

class _VitalMapsScreenState extends State<VitalMapsScreen> {
  final Completer<GoogleMapController> _mapController = Completer();

  static final _fiap = [
    CameraPosition(
      target: LatLng(-23.5741047, -46.6232274),
      zoom: 17,
    ),
    CameraPosition(
      target: LatLng(-23.5641095, -46.6524099),
      zoom: 15,
    ),
  ];

  Set<Marker> _getMarkers() {
    var markers = <Marker>{};

    for (var i = 0; i < _fiap.length; i++) {
      var position = _fiap[i].target;
      markers.add(
        Marker(
          markerId: MarkerId('fiap_$i'),
          position: position,
          infoWindow: InfoWindow(title: 'Unidade FIAP ${i + 1}'),
        ),
      );
    }

    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vital Maps'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        initialCameraPosition: _fiap[0],
        markers: _getMarkers(),
        onMapCreated: (controller) {
          _mapController.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final controller = await _mapController.future;
          await controller.animateCamera(CameraUpdate.newCameraPosition(_fiap[1]));
        },
        child: const Icon(Icons.location_on),
        backgroundColor: Colors.green[700],
      ),
    );
  }
}

