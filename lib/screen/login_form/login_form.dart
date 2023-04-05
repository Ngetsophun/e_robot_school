import 'package:flutter/material.dart';

class Login_Form extends StatefulWidget {
  const Login_Form({super.key});

  @override
  State<Login_Form> createState() => _Login_FormState();
}

class _Login_FormState extends State<Login_Form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [Image.asset("Image/erobot.jpg")],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                children: <Widget>[
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your Email',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your Password',
                          prefixIcon: Icon(
                            Icons.key_rounded,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.visibility_rounded,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          )),
                    ),
                  ),
                  Container(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
