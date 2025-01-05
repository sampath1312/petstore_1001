import 'package:flutter/material.dart';
import 'package:petstore_sampathk_1001/routes/routes_constants.dart';
import 'package:petstore_sampathk_1001/services/navigation_services.dart';
import 'package:petstore_sampathk_1001/widget/button_widget.dart';
import 'package:petstore_sampathk_1001/widget/input_text_field_widget.dart';
import 'package:petstore_sampathk_1001/widget/logo_widget.dart';
import 'package:petstore_sampathk_1001/widget/text_button_widget.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const LogoWidget(
                height: 250,
              ),
               const SizedBox(
                height: 20,
              ),
              InputTextFieldWidget(
                hintText: "Email Address",
                textEditingController: _emailTextController,
                prefixIcon: const Icon(Icons.email),
              ),
              const SizedBox(
                height: 20,
              ),
              InputTextFieldWidget(
                hintText: "Password",
                textEditingController: _passwordTextController,
                obscureText: true,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility_off),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButtonWidget(
                      buttonTitle: "Forgot Password?", onPressed: () {}),
                      
                ],
             ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ButtonWidget(
                    buttonTitle: "Login",
                    onPressed: () {
                      loginAction();
                    }),
                 ),
                 const SizedBox(
                height: 20,
                  ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(" or connect with"),
                ],
                ),
               SizedBox(
                height: 20,
               ),
    
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                     ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           IconButton(
                              icon: const Icon(Icons.facebook),
                              onPressed: () {},
                            ),
                            const Text("Login With Facebook",style: TextStyle(
                              color: Colors.black,
                             fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                                    const SizedBox(
                                   height: 20,
                                  ),
                      Container(
                                    decoration: BoxDecoration(
                            color: Colors.greenAccent,
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.g_translate),
                             
                              onPressed: () {},
                            ),
                            const Text("Login With Google",style: TextStyle(
                              color: Colors.black,
                             fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                     const SizedBox(
                             height: 20,
                          ),
                      Container(
                                    decoration: BoxDecoration(
                          color: Colors.greenAccent,
                            ),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             IconButton(
                              icon: const Icon(Icons.apple),
                             
                              onPressed: () {},
                            ),
                            const Text("Login With Apple" ,style: TextStyle(
                              color: Colors.black,
                             fontWeight: FontWeight.bold,
                            ),),
                          ],                     
                        ),
                      ),
                      const SizedBox(
                             height: 20,
                          ),
                     
                    ],
                  ), 

                ),
                            Container(
                                    decoration: BoxDecoration(
                          color: Colors.greenAccent,
                            ),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             IconButton(
                              icon: const Icon(Icons.copyright),
                             
                              onPressed: () {},
                            ),
                            const Text("All Rights Reserved to Pixel Pose" ,style: TextStyle(
                              color: Colors.black,
                             fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],                     
                        ),
                      ),
              ],
          ),
        ),
      ),
    );
  }

  void loginAction() async {
    NavigationServices().replaceAll(RoutesConstants.homeScreen);

  }
  
  
}

