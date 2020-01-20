import 'package:flutter/material.dart';
import 'package:spa/profile/profile_view.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Mohamed Talaat',
              style: TextStyle(fontSize: 20),
            ),
            accountEmail: Text(
              'talat7777777@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/profile.jpg'),
              ),
            ),
          ),
          DrawerItems(
            icon: Icons.person_outline,
            title: 'Your Profile',
            onPressed: () {
              Navigator.pushNamed(context, Profile.id);
            },
          ),
          DrawerItems(
            icon: Icons.bookmark_border,
            title: 'Your Bookings',
            onPressed: () {},
          ),
          DrawerItems(
            icon: Icons.payment,
            title: 'Payment ways',
            onPressed: () {},
          ),
          DrawerItems(
            icon: Icons.location_city,
            title: 'Branches',
            onPressed: () {},
          ),
          DrawerItems(
            icon: Icons.settings,
            title: 'Settings',
            onPressed: () {},
          ),
          DrawerItems(
            icon: Icons.share,
            title: 'Share App',
            onPressed: () {},
          ),
          DrawerItems(
            icon: Icons.help_outline,
            title: 'Help',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onPressed;
  DrawerItems({this.title, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
      ),
      child: Container(
          color: Colors.amber.withOpacity(.05),
          width: MediaQuery.of(context).size.width,
          height: 55,
          child: MaterialButton(
            onPressed: onPressed,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    icon,
                    size: 26,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          )),
    );
  }
}
