import 'package:flutter/material.dart';
import 'package:flutter_intern/day8/sharedprefence_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _controllerFirstName = TextEditingController();
  final _controllerMiddleName = TextEditingController();
  final _controllerLastName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerCity = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerConfirmPassword = TextEditingController();

  String? firstName;
  String? middleName;
  String? lastName;
  String? email;
  String? city;
  String? password;
  String? confirmpassword;

  void _saveFormData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> formData = [
      _controllerFirstName.text,
      _controllerMiddleName.text,
      _controllerLastName.text,
      _controllerEmail.text,
      _controllerCity.text,
      _controllerPassword.text,
      _controllerConfirmPassword.text,
    ];
    var data = await prefs.setStringList('formData', formData);

    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Textformfields'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 45.0, left: 45.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Create Account',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Firstname';
                  }
                  return null;
                },
                controller: _controllerFirstName,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'FirstName*'),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                controller: _controllerMiddleName,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'MiddleName'),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                controller: _controllerLastName,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'LastName*'),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                controller: _controllerEmail,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    labelText: 'Email*'),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                controller: _controllerCity,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.location_city_outlined),
                  border: OutlineInputBorder(),
                  labelText: 'City*',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                controller: _controllerPassword,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: 'Password*',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                controller: _controllerConfirmPassword,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password*',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black)),
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //       const SnackBar(content: Text('Processing Data')));
                  // }
                  setState(() {
                    firstName = _controllerFirstName.text;
                    middleName = _controllerMiddleName.text;
                    lastName = _controllerLastName.text;
                    email = _controllerEmail.text;
                    city = _controllerCity.text;
                    password = _controllerPassword.text;
                    confirmpassword = _controllerConfirmPassword.text;
                  });
                  _saveFormData();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SharedprefenceScreen()));
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Text(
              //   'FullName:$firstName $middleName $lastName,',
              // ),
              // Text('Email:$email'),
              // Text('City:$city'),
              // Text('Password:$confirmpassword')
            ],
          ),
        ),
      ),
    );
  }
}
