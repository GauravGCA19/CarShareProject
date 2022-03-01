import 'package:flutter/material.dart';
import 'package:flutter_login_design_master/list_car_screen.dart';
import 'package:flutter_login_design_master/user_profile_screen.dart';
import '../login_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Explore!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile(
            'List Your Car',
            Icons.car_rental,
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ListCarScreen()));
            },
          ),
          buildListTile(
            'User Profile',
            Icons.person_rounded,
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const UserProfileScreen()));
            },
          ),
          buildListTile(
            'Log Out',
            Icons.logout,
            () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
