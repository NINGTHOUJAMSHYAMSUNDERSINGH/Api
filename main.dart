import 'dart:html';

import 'package:flutter/material.dart';

import 'NextPage/studentlist.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewTest(),
    );
  }
}

class NewTest extends StatefulWidget {
  const NewTest({super.key});

  @override
  State<NewTest> createState() => _NewTestState();
}

class _NewTestState extends State<NewTest> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  final String usn = "Appu";
  final String psd = "Appu123";
  bool visibility = true, flag = false;
  String errormsg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: const Color.fromARGB(255, 221, 255, 231),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
                height: 50,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.amber, fontSize: 25),
                )),
            SizedBox(
              width: 200,
              child: TextField(
                onTap: () {
                  setState(() {
                    errormsg = "";
                  });
                },
                controller: userName,
                decoration: InputDecoration(
                    counterText: errormsg,
                    border: const OutlineInputBorder(),
                    hintText: "Username"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                obscureText: visibility,
                onTap: () {
                  setState(() {
                    errormsg = "";
                  });
                },
                controller: password,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: visibility
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                    ),
                    counterText: errormsg,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.vertical()),
                    hintText: "Password"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  // String name = userName.text;
                  // String pass = password.text;
                  // flag = auth(name, pass);
                  // if (!flag) {
                  // log("Login");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StudentLists(),
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(9),
                  child: Text("Student Lists"),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(9),
                  child: Text("dashboard"),
                ))
          ]),
        ),
      ),
    );
  }

  bool auth(String userName, String password) {
    if (userName == usn && password == psd) {
      return true;
    }
    return false;
  }
}
