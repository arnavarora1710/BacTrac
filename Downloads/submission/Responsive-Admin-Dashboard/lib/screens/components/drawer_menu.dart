import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/screens/components/drawer_list_tile.dart';
import 'package:responsive_admin_dashboard/screens/components/graph_screen.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            //alignment: Alignment.topLeft,
            padding: EdgeInsets.all(20),
            child: Image.asset(
              "assets/images/BacTrac.png",
              height: 100,
              width: 100,
            ),
          ),
          ListTile(title: const Text('Map'), leading: Icon(Icons.map)),
          ListTile(
            title: const Text('Statistics'),
            //svgSrc: 'assets/icons/Statistics.svg',
            leading: Icon(Icons.bar_chart),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GraphScreen(),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          ListTile(
              title: const Text('Settings'), leading: Icon(Icons.settings)),
          ListTile(title: const Text('Logout'), leading: Icon(Icons.logout)),
        ],
      ),
    );
  }
}
