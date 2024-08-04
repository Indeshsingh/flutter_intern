import 'package:flutter/material.dart';
import 'package:flutter_intern/day8/sharedprefence_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ValidatorformScreen extends StatefulWidget {
  const ValidatorformScreen({super.key});

  @override
  State<ValidatorformScreen> createState() => _ValidatorformScreenState();
}

class _ValidatorformScreenState extends State<ValidatorformScreen> {
  final _formkey = GlobalKey<FormState>();

  final _controllerFirstName = TextEditingController();
  final _controllerMiddleName = TextEditingController();
  final _controllerLastName = TextEditingController();
  final _controllerPhoneNumber = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerCountry = TextEditingController();
  final _controllerState = TextEditingController();
  final _controllerCity = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerConfirmPassword = TextEditingController();

  void _saveFormData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> formData = [
      _controllerFirstName.text,
      _controllerMiddleName.text,
      _controllerLastName.text,
      _controllerPhoneNumber.text,
      _controllerEmail.text,
      _controllerCountry.text,
      _controllerState.text,
      _controllerCity.text,
      _controllerPassword.text,
      _controllerConfirmPassword.text,
    ];
    await prefs.setStringList('formData', formData);
  }

  Future<List<String>> _getFormData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? formData = prefs.getStringList('formData');
    return formData ?? [];
  }

  @override
  void dispose() {
    _controllerFirstName.dispose();
    _controllerMiddleName.dispose();
    _controllerLastName.dispose();
    _controllerPhoneNumber.dispose();
    _controllerEmail.dispose();
    _controllerCountry.dispose();
    _controllerState.dispose();
    _controllerCity.dispose();
    _controllerPassword.dispose();
    _controllerConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 164, 171, 184),
        title: const Text('ValidatorForm'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 9.0, left: 35.0, right: 35.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _controllerFirstName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your firstname';
                        } else if (value.length < 3) {
                          return 'firstname must be at least 4 characters long';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'FirstName*',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _controllerMiddleName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'MiddleName',
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _controllerLastName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your lastname';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'LastName*',
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _controllerPhoneNumber,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number';
                        } else if (value.length < 10) {
                          return 'Phone number must be 10 digit';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'PhoneNumber*',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _controllerEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(
                                r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                            .hasMatch(value)) {
                          return 'Please enter a valid email ';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'Email*',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _controllerCountry,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your country name';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Country*',
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _controllerState,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your state name';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'State*',
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _controllerCity,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your city name';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'City*',
                        prefixIcon: Icon(Icons.location_city),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      controller: _controllerPassword,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        } else if (!regex.hasMatch(value)) {
                          return 'Pwd should contain at least one upper,lower,digit & Special character';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password*',
                        prefixIcon: Icon(Icons.password),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      controller: _controllerConfirmPassword,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please confirm your password';
                        } else if (value != _controllerPassword.text) {
                          return 'Not Match';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password*',
                        prefixIcon: Icon(Icons.password),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing data')),
                          );
                          setState(() {
                            _saveFormData();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SharedprefenceScreen(),
                              ),
                            );
                          });
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Saved Data',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              FutureBuilder<List<String>>(
                future: _getFormData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Text('No saved data');
                  } else {
                    List<String> formData = snapshot.data!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            itemCount: formData.length,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Text(formData[index])],
                              );
                            },
                          ),
                        )
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
