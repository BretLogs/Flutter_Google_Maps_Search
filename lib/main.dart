import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController? mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: [
            // SearchMapPlaceWidget(
            //     hasClearButton: true,
            //     placeType: PlaceType.address,
            //     placeholder: "Enter the location",
            //     apiKey: "AIzaSyBwoZpl1lHZXTvbjet8P-wsZo5Qtpf_Kzk",
            //     onSelected: (Place place) async {
            //       Geolocation geolocation = await place.geolocation;
            //       mapController.animateCamera(
            //         CameraUpdate.newLatLng(geolocation.getcoordinates),
            //       );
            //       mapController.animateCamera(
            //         CameraUpdate.newLatLngBound(geolocation.bounds, 0),
            //       );
            //     }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 500,
                child: GoogleMap(
                  onMapCreated: (GoogleMapController googleMapController) {
                    setState(() {
                      mapController = googleMapController;
                    });
                  },
                  initialCameraPosition: const CameraPosition(
                    zoom: 15.0,
                    target: LatLng(21.1458, 79.08822),
                  ),
                  mapType: MapType.normal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
