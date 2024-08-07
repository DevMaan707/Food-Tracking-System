import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 0.1 * screenwidth, top: 0.2 * screenheight),
                child: const Text('Welcome\nBack', style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top : 0.5 * screenheight,
                      right: 0.15 * screenwidth,
                      left: 0.15 * screenwidth),
                  child: Column(
                    children: [
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 0.025*screenheight,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign In', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                                color: Colors.white,
                                onPressed: (){
                                  Navigator.pushNamed(context, 'login');
                                },
                                icon: Icon(Icons.arrow_forward)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
