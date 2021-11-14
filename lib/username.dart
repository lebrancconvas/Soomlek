import "package:flutter/material.dart";

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  MyFormScreenState createState() {
    return MyFormScreenState();
  }
}

class MyFormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Required Username.";
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: () { 
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Success.")), 
                );
              }
            },
            child: const Text("Submit"), 
            )
          ],
        ));
  }
}
