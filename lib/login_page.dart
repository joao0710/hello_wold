// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 100,
                height: 100,
                child: Image.network(
                    'https://w7.pngwing.com/pngs/173/464/png-transparent-pokemon-ball-pokeball-area-wiki-technology.png')),
            SizedBox(
              height: 30,
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.only(
                left: 6,
                right: 6,
                top: 6,
                bottom: 6,
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.only(
                left: 6,
                right: 6,
                top: 6,
                bottom: 6,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
            )),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Color.fromARGB(255, 63, 223, 175),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Text('Entrar'),
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            _body(),
          ],
        ),
      ),
    );
  }
}
