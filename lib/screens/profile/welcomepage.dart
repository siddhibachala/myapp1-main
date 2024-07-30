import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  String name,lastname,domain,email;


  Welcomepage({required this.name,required this.lastname, required this.domain, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,

        children: [
          Text('First Name: ${ name}'),
          Text('Last Name: ${lastname}'),
          Text('Domain: ${domain}'),
          Text('Email: ${email}'),
        ],
      ),
    );
  }
}

