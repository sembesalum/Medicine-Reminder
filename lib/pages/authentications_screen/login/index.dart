import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/authentications_screen/register/index.dart';
import 'package:medicine_reminder/pages/options/gender/index.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.homescreen,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration:  BoxDecoration(
                  color: Styles.homescreen,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/pill1.png"),
                    fit: BoxFit
                        .contain, // Adjust the image size while keeping its aspect ratio
                  ),
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Karibu Tena!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Ingia sasa uweze kupata taarifa za afya yako kwa urahisi zaidi ukitumia application yetu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon:
                            Icon(Icons.email, color: Styles.primaryColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon:
                            Icon(Icons.lock, color: Styles.primaryColor),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Styles.primaryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.stretch, // Make buttons full-width
                  children: [
                    MaterialButton(
                      color: Styles.splashScreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const GenderScreen(), // Replace with actual screen
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15), // Adjust padding for height
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Je, hauna account?  ",
                  ),
                  GestureDetector(
                    child: const Text(
                      "Fungua sasa.", style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
