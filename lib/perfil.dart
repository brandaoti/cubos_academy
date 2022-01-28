import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            ListTile(
              leading: CircleAvatar(),
              title: Text(
                'Jess',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Meu perfil'),
            ),
            ListTile(
              title: Text('Notificações'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Editar Perfil'),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
