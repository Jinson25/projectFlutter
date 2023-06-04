import 'package:flutter/material.dart';
import 'package:project/auth/register.dart';
import 'package:project/pages/home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 50.0,
        ),
        children: <Widget>[
          Center(
              child: CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.indigoAccent,
                  backgroundImage: AssetImage('images/auth.jpg'))),
          Text('login',
              style: TextStyle(fontFamily: 'cursive', fontSize: 50.0)),
          Text('Ejemplo 2',
              style: TextStyle(fontFamily: 'cursive', fontSize: 20.0)),
          SizedBox(
              width: 160.0,
              height: 15.0,
              child: Divider(color: Colors.blueGrey[600])),
          TextField(
            enableInteractiveSelection: false,
            autofocus: true,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
                hintText: 'User - Name',
                labelText: 'Username',
                suffixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((20.0)))),
          ),
          Divider(
            height: 25.0,
          ),
          TextField(
            enableInteractiveSelection: false,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
                hintText: 'E-mail',
                labelText: 'E-mail',
                suffixIcon: Icon(Icons.alternate_email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((20.0)))),
          ),
          Divider(
            height: 25.0,
          ),
          TextField(
            obscureText: true,
            enableInteractiveSelection: false,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                suffixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((20.0)))),
          ),
          SizedBox(height: 25.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePages()),
              );
            },
            child: Text('Login'),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            child: Text(
              '¿No tienes cuenta? Registrate',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
