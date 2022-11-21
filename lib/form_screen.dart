import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  static const String routes = 'FormScreen';
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  String yourname = '';
  final TextEditingController pass = TextEditingController();
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Widget'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Your name is $yourname"),
            ),
            TextFormField(
              controller: fullname,
              decoration:
                  const InputDecoration(hintText: 'Please enter your name'),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Your Password $password"),
            ),
            TextFormField(
              controller: pass,
              decoration:
                  const InputDecoration(hintText: 'Please enter your password'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  yourname = fullname.text;
                  password = pass.text;
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
