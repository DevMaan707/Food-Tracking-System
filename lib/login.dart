import 'package:flutter/material.dart';
import 'package:login_signup/reportpage.dart';
import 'package:login_signup/homepage.dart';


class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() {
    return _LoginPageScreenState();
  }
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final _loginNameController=TextEditingController();
  final _passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height:sheight*0.3,
                  width: swidth*0.5,
                  child: Image.asset('assets/coverpage.jpg'),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Login To Start",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: _loginNameController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.login,
                        color: Color.fromARGB(255, 59, 158, 201),
                      ),
                      labelText: 'Patient Id ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  child: TextField(

                    controller: _passwordController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Color.fromARGB(255, 59, 158, 201),
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Padding(
                        padding:const EdgeInsets.only(right: 20),
                        child: Container(

                          height: sheight * 0.065,
                          width: swidth * 0.4,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 59, 158, 201),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => const HomePage()));
                              print(_loginNameController.text);
                              print(_passwordController.text);

                            },
                            child: const Center(
                              child: Text(
                                'Login',
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
