import 'package:codepur/utils/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 1500));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.jpg",
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 20),
                Text("Welcome",
                    style:
                        TextStyle(fontSize: 25, fontStyle: FontStyle.italic)),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(11))),
                    labelText: "UserName",
                    hintText: 'Enter Username',
                    filled: true,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "UserName is empty";
                    } else if (value.length < 10) {
                      return "user name max 10 char";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(11))),
                    labelText: "UserPassword",
                    hintText: 'Enter Password',
                    filled: true,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is empty";
                    } else if (value.length < 8) {
                      return "please enter 8 digit password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                        duration: Duration(seconds: 3),
                        height: 50,
                        width: changeButton ? 70 : 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(22),
                            )))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
