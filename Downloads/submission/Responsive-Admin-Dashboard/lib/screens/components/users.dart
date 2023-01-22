import 'package:flutter/material.dart';
import 'dart:async';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'bar_chart_users.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;
    final Completer<GoogleMapController> _controller =
        Completer<GoogleMapController>();
    final LatLng _center = const LatLng(40.4259, -86.9081);

    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }

    return Container(
      height: 500,
      width: double.infinity,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Map",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: textColor,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GoogleMap(
              circles: Set.from(
                [
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4285319, -86.9242086),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 46, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4306393, -86.9252084),
                    radius: 50,
                    fillColor:
                        Color.fromARGB(255, 0, 102, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4294794, -86.9228942),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 26, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.427591, -86.9191095),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 61, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4273707, -86.9153586),
                    radius: 50,
                    fillColor:
                        Color.fromARGB(255, 0, 148, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4238567, -86.910818),
                    radius: 50,
                    fillColor:
                        Color.fromARGB(255, 0, 148, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4238133, -86.9111984),
                    radius: 50,
                    fillColor:
                        Color.fromARGB(255, 0, 128, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4240557, -86.9107488),
                    radius: 50,
                    fillColor:
                        Color.fromARGB(255, 0, 128, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4285319, -86.9242086),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 82, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4238133, -86.9111984),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 92, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4240557, -86.9107488),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 46, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.3915454, -86.8525902),
                    radius: 50,
                    fillColor:
                        Color.fromARGB(255, 0, 113, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.1831652, -86.2695358),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 92, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4227325, -86.9098896),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 26, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4253425, -86.9315561),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 26, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.457533, -86.9989068),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 46, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4266792, -86.9309242),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 51, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4240504, -86.9274132),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 15, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4249482, -86.9149058),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 15, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                  Circle(
                    circleId: CircleId('currentCircle'),
                    center: LatLng(40.4243143, -86.917438),
                    radius: 50,
                    fillColor: Color.fromARGB(255, 0, 46, 255).withOpacity(0.5),
                    strokeColor: Colors.blue.shade100.withOpacity(1.0),
                    strokeWidth: 1,
                  ),
                ],
              ),
              mapType: MapType.none,
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 14.0,
              ),
              onTap: (position) {
                // if (position)
              },
            ),
          ),
        ],
      ),
    );
  }
}
