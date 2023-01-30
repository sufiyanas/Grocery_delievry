import 'package:flutter/material.dart';
import 'package:grocery_delivary/const/const.dart';
import 'package:grocery_delivary/infrastructure/directions_repository.dart';
import 'package:grocery_delivary/presentation/map_page/map_page.dart';
import 'package:grocery_delivary/presentation/widget/grey_text.dart';
import 'package:grocery_delivary/presentation/widget/order_card.dart';
import 'package:toggle_switch/toggle_switch.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 23,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 21,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("asset/images/profileimage.jpeg"),
                        ),
                      )),
                  ToggleSwitch(
                    minWidth: 90.0,
                    cornerRadius: 25.0,
                    // activeBgColors: [
                    //   [Colors.green[800]!],
                    //   [Colors.red[800]!]
                    // ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    borderColor: [Colors.grey],

                    initialLabelIndex: 1,

                    totalSwitches: 2,
                    labels: const ['Online', 'Offline'],
                    radiusStyle: true,

                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  const Icon(
                    Icons.wb_twilight_outlined,
                    color: Colors.red,
                    size: 27,
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        GreyText(
                          text: "Orders in Queue",
                        ),
                      ],
                    ),
                    kheight10,
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return OrderCard(mwidth: mwidth);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blueAccent,
        child: IconButton(
            onPressed: () {
              // await DirectionsRepository.getDirection(
              //     orginLatlong: orginLatlong,
              //     destinationLatlong: destinationLatlong);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPageScreen(),
                  ));
            },
            icon: const Icon(
              Icons.directions,
              color: Colors.white,
              size: 30,
            )),
      ),
    );
  }
}
