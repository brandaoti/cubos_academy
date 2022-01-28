import 'package:cubos_academy/perfil.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'HomeScreen',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/home.png'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (cnt) => Profile(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(primary: Colors.red),
            child: Text('Perfil'),
          )
        ],
      ),
    );
  }
}
