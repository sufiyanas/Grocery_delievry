import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//sized box with height 10
const kheight10 = SizedBox(
  height: 10,
);

//sized box with width 10
const kWidth10 = SizedBox(
  width: 10,
);

//sized box with width 5
const kWidth5 = SizedBox(
  width: 5,
);

//sized box with width 20
const kWidth30 = SizedBox(
  width: 30,
);

final orginLatlong = LatLng(9.998571, 76.299711);
final destinationLatlong = LatLng(10.001679, 76.304549);

//markers for google map
final markers = Set<Marker>.of(
  <Marker>[
    const Marker(
      markerId: MarkerId("marker_1"),
      position: LatLng(9.998571, 76.299711),
      infoWindow: InfoWindow(
        title: "Restarent-1",
      ),
      icon: BitmapDescriptor.defaultMarker,
    ),
    const Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(10.001679, 76.304549),
        infoWindow: InfoWindow(
          title: "Restsrent-2",
        )),
    const Marker(
        markerId: MarkerId("marker_3"),
        position: LatLng(9.993458, 76.307776),
        infoWindow: InfoWindow(
          title: "Restsrent-2",
        ))
  ],
);
