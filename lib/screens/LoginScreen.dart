import 'package:flutter_task_app/themes/colors.dart';
import 'package:flutter_task_app/widgets/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isChecked = false;

  void login(String email, password, device_id) async {
    try {
      Response response = await post(
          Uri.parse("https://api.mr-corp.ca/api/login/"),
          body: {'email': email, 'password': password, 'device_id': device_id});
      if (response.statusCode == 200) {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const NavigationScreen()));

        print('Login Successfull');
        print(email);
        print(password);
        print(device_id);
      } else {
        print('Login not Successfull');
        print(email);
        print(password);
        print(device_id);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    String device_id = "dcndjc89";
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/homescreenD.png",
                    width: 62,
                    height: 62,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "assets/deelly.png",
                    width: 100,
                    height: 60,
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 50),
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 5,
                  right: 15,
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 5,
                  right: 15,
                ),
                child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Fogot Password?",
                    style: TextStyle(color: Colors.lightBlueAccent),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: Colors.blue, // Change active color
                    ),
                    const Text(
                      "Accept Terms & Conditions",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?"),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  login(
                    _emailController.text.toString(),
                    _passwordController.text.toString(),
                    device_id.toString(),
                  );
                },
                child: Center(
                  child: Container(
                    width: 335,
                    height: 50,
                    decoration: BoxDecoration(
                      color: UiColor.buttonColor,
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          UiColor.gradientColor1,
                          UiColor.gradientColor2,
                        ], // Gradient colors
                        begin: Alignment.topLeft, // Gradient start point
                        end: Alignment.bottomRight, // Gradient end point
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
