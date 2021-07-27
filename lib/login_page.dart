import 'package:flutter/material.dart';
import 'package:primeiro_app/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/images/logo.png')),
                  Container(
                    height: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 12, left: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(height: 15),
                          RaisedButton(
                              color: Colors.red,
                              textColor: Colors.white,
                              onPressed: () {
                                if (email == 'octaviomartins10@gmail.com' &&
                                    password == '123') {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  print('Não autenticado');
                                }
                              },
                              child: Container(
                                child:
                                    Text('Entrar', textAlign: TextAlign.center),
                                width: double.infinity,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                Image.asset('assets/images/background.png', fit: BoxFit.cover)),
        Container(
          color: Colors.black.withOpacity(0.4),
        ),
        _body(),
      ],
    ));
  }
}
