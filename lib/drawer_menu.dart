import 'package:flutter/material.dart';

//import 'main.dart';
import 'package:valdez/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Formulario Venta',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formS1)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Formulario Marca',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formE2)}),
          _buildDrawerItem(
              icon: Icons.shopping_cart,
              text: 'Formulario Sucursal',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formP3)}),
          _buildDrawerItem(
              icon: Icons.person,
              text: 'Formulario Cliente',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formC4)}),
          _buildDrawerItem(
              icon: Icons.event,
              text: 'Formulario Articulo',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formA5)}),
          const Divider(),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return const DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/j20.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("SadBoyz Productos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
