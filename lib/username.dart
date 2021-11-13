// ignore_for_file: unused_field, deprecated_member_use

import "package:flutter/material.dart";

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  late String _username;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Widget _buildUsername() {
    return TextFormField(
        decoration: const InputDecoration(labelText: 'Username'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Name is required.';
          }
        },
        onSaved: (value) {
          _username = value!; 
        }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Soomlek.")),
        body: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildUsername(),
                  const SizedBox(height: 100),
                  RaisedButton(
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () => {})
                ])));
  }
}
