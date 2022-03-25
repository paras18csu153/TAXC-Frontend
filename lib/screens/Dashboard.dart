import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GoogleMapController? _controller;
  Location currentLocation = Location();
  final Set<Marker> _markers = {};
  late BitmapDescriptor customIcon;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
    setState(() {
      getLocation();
    });
  }

  void setCustomMarker() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, 'assets/images/marker.png');
  }

  void getLocation() async {
    var location = await currentLocation.getLocation();
    currentLocation.onLocationChanged.listen((LocationData loc) {
      _controller?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0),
          zoom: 17.5)));
      print(loc.latitude);
      print(loc.longitude);
      setState(() {
        _markers.add(Marker(
            markerId: const MarkerId('Home'),
            position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0),
            icon: customIcon));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          zoomControlsEnabled: false,
          initialCameraPosition:
              const CameraPosition(target: LatLng(48.8561, 2.2930), zoom: 17.5),
          onMapCreated: (GoogleMapController controller) {
            _controller = controller;
          },
          markers: _markers,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.location_searching,
          color: Colors.white,
        ),
        onPressed: () {
          getLocation();
        },
      ),
    );
  }
}
