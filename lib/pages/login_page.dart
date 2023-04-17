import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Welcome $name",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter user name",
                        labelText: "User Name",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: ()async {
                          setState(() {
                            changeButton = true; 
                          });
                          await Future.delayed(Duration( seconds : 1) );
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton?Icon(Icons.done, color :Colors.white ): Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                             // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(changeButton ?50: 8), 
                              ),
                        ))
                    //ElevatedButton(
                    //onPressed: () {
                    //Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //},
                    //child: Text("Login"),
                    //style: TextButton.styleFrom(
                    //  minimumSize: const Size(130, 40)),
                    //)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
