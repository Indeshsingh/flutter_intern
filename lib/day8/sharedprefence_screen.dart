import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedprefenceScreen extends StatefulWidget {
  const SharedprefenceScreen({super.key});

  @override
  State<SharedprefenceScreen> createState() => _SharedprefenceScreenState();
}

class _SharedprefenceScreenState extends State<SharedprefenceScreen> {
  // final String _key = "key";
  // String _value = "value";
  List<String> _formdata = [];
// to show the retrive saved value
  @override
  void initState() {
    super.initState();
    _loadFormdata();
  }

// to load the saved value in sharedpreferences
  void _loadFormdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _formdata = prefs.getStringList('formData') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('SharedPreferences'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _formdata.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(_formdata[index])],
                  );
                }),
          ),
          // TextField(
          //   decoration: const InputDecoration(hintText: 'Enter value'),
          //   onChanged: (value) {
          //     setState(() {
          //       _value = value;
          //     });
          //   },
          // ),
          const SizedBox(
            height: 20,
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     _saveValue();
          //   },
          //   style: const ButtonStyle(
          //     backgroundColor: WidgetStatePropertyAll(Colors.black),
          //   ),
          //   child:
          //       const Text('save', style: TextStyle(color: Colors.white)),
          // )
        ],
      ),
    );
  }

//to save the value in sharedpreferences
  // void _saveValue() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString(_key, _value);
  // }
}
