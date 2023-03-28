import 'package:app_bloc/services/users_service.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: const [
            FormText(),
            Center(
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}

class FormText extends StatefulWidget {
  const FormText({Key? key}) : super(key: key);

  @override
  State<FormText> createState() => _FormTextState();
}

class _FormTextState extends State<FormText> {
  String _value = 'Hello World';
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_value),
        TextField(
          controller: _controller,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _value = _controller.text;
            });
          },
          child: const Text('Click me'),
        ),
        TextButton(
          onPressed: () {
            UsersService.instance.getUsers();
          },
          child: const Text('Fetch users'),
        ),
      ],
    );
  }
}
