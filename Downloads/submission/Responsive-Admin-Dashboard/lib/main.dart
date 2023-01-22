import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_admin_dashboard/controllers/controller.dart';
import 'package:responsive_admin_dashboard/screens/dash_board_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

// class _MyAppState extends State<MyApp> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Maps Sample App'),
//           backgroundColor: Colors.green[700],
//         ),
//         body: GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: CameraPosition(
//             target: _center,
//             zoom: 11.0,
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(40.4259, 86.9081);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BacTrac',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Controller(),
          )
        ],
        child: DashBoardScreen(),
        // Expanded(
        //   child: GoogleMap(
        //       onMapCreated: _onMapCreated,
        //       initialCameraPosition: CameraPosition(
        //         target: _center,
        //         zoom: 11.0,
        //       )),
        // )
      ),
    );
  }
}
