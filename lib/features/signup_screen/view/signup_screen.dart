
import 'package:flutter/material.dart';
import 'package:petstore_sampathk_1001/services/navigation_services.dart';
import 'package:petstore_sampathk_1001/widget/button_widget.dart';
import 'package:petstore_sampathk_1001/widget/input_text_field_widget.dart';
import 'package:petstore_sampathk_1001/widget/logo_widget.dart';
import 'package:petstore_sampathk_1001/widget/text_button_widget.dart';
import 'package:petstore_sampathk_1001/widget/title_and_sub_heading_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const LogoWidget(
                height: 250,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TitleAndSubHeadingWidget(
                    title: "Welcome Back",
                    subHeading:
                        "Sign up in to your account using email , name and password"),
              ),
              const SizedBox(
                height: 20,
              ),
              // InputTextFieldWidget(
              //     hintText: "Enter Name",
              //     prefixIcon: const Icon(Icons.person),
              //     textEditingController: _nameTextController),
              // const SizedBox(
              //   height: 20,
              // ),
              InputTextFieldWidget(
                  hintText: "Enter Email",
                  prefixIcon: const Icon(Icons.email),
                  textEditingController: _emailTextController),
              const SizedBox(
                height: 20,
              ),
              InputTextFieldWidget(
                hintText: "Enter Password",
                textEditingController: _passwordTextController,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility),
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ButtonWidget(
                    buttonTitle: "Sign Up",
                    onPressed: () {
                      AlertDialog();
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButtonWidget(
                      buttonTitle: "Login",
                      onPressed: () {
                        NavigationServices().goBack();
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  void showAlertMessage({String message = ""}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () {
                  NavigationServices().goBack();
                },
                child: const Text("Ok"))
          ],
        );
      },
    );
  }
}

