import 'package:flutter/material.dart';
import 'package:grocery_delivary/const/const.dart';
import 'package:grocery_delivary/presentation/map_page/widgets/custom_tile.dart';
import 'package:grocery_delivary/presentation/map_page/widgets/slide_to_order_widget.dart';
import 'package:grocery_delivary/presentation/widget/black_text.dart';
import 'package:grocery_delivary/presentation/widget/grey_text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grocery_delivary/presentation/widget/order_card.dart';

class MapPageScreen extends StatelessWidget {
  MapPageScreen({super.key});
//google map functions
  CameraPosition initialCameraPosition = const CameraPosition(
      target: LatLng(10.002329, 76.305970), zoom: 14, bearing: 0.1);
  late GoogleMapController googleMapController;
  // ignore: prefer_collection_literals

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const BlackText(text: "17 mins"),
        actions: [
          Row(
            children: [
              const GreyText(text: "1.8 km"),
              kWidth10,
              Icon(
                Icons.circle,
                color: Colors.lightBlue.shade100,
                size: 11,
              ),
              kWidth10,
              const GreyText(text: "11.48 am"),
            ],
          )
        ],
      ),
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: mwidth,
            height: mwidth + 20,
            child: GoogleMap(
              initialCameraPosition: initialCameraPosition,
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              markers: markers,
              polylines: Set<Polyline>.of([
                const Polyline(
                  polylineId: PolylineId("polyline_1"),
                  points: [
                    LatLng(9.998571, 76.299711),
                    LatLng(10.001679, 76.304549),
                    LatLng(9.993458, 76.307776)
                  ],
                  color: Colors.blue,
                  width: 5,
                ),
              ]),

              // onMapCreated: (GoogleMapController controller) {
              //   googleMapController = controller;
              // },
            ),
          ),
        ),
        SizedBox.expand(
          child: DraggableScrollableSheet(
            maxChildSize: 0.6,
            minChildSize: 0.50,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      children: [
                        kheight10,
                        Container(
                          width: mwidth * 0.15,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade600),
                        ),
                        const CustomTile(
                          leading: Icon(
                            Icons.location_pin,
                            color: Colors.blue,
                          ),
                          title: BlackText(
                              text: "DELIVERY LOCATION",
                              fontcolor: Colors.blue,
                              fontSize: 16),
                          trailing: GreyText(text: "#ODN0000598"),
                        ),
                        ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "asset/images/city-1.jpg",
                              // width: mwidth / 4,
                              height: mwidth / 4 + 10,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: const GreyText(
                              text:
                                  "Vattakarai,Chennavannanvilai,Nagercoil,Thamil Nadu 629002, India",
                              fontsize: 18),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        kheight10,
                        Row(
                          children: [
                            kWidth10,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                GreyText(text: "Payment"),
                                BlackText(text: "₹ 250"),
                              ],
                            ),
                            kWidth30,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                GreyText(text: "Payment Mode"),
                                BlackText(text: "Cash on delivery"),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            kWidth10,
                            GreyText(text: "Delivaring to"),
                          ],
                        ),
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage("asset/images/profileimage2.jpeg"),
                          ),
                          title: const BlackText(text: "Anita"),
                          trailing: Wrap(
                            spacing: 12,
                            children: const [
                              CircleAvatar(
                                child: Icon(Icons.message_sharp),
                              ),
                              CircleAvatar(
                                child: Icon(Icons.call),
                              ),
                            ],
                          ),
                        ),
                        SlideToORder(mwidth: mwidth),
                        const Divider(
                          thickness: 1,
                        ),
                        const CustomTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.warning),
                            ),
                            title: BlackText(
                                text: "Report Issue about this order",
                                fontcolor: Colors.blue,
                                fontSize: 16),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue,
                            )),
                        const Divider(
                          thickness: 1,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
