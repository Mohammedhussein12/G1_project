import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:tripit_project/core/helper_methods.dart';
import 'package:tripit_project/screens/sign_in_screen/view.dart';
import 'package:tripit_project/screens/tours_screen2/view.dart';

import 'SignUpProvider.dart';

class SignUpScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpProvider signUpProvider = Provider.of<SignUpProvider>(context);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Color(0xff4458DB),
                  Color(0xff4A57DB),
                  Color(0xff5655DB),
                  Color(0xff5C54DB),
                  Color(0xff6B51DB),
                  Color(0xff774FDB),
                  Color(0xff894CDB),
                  Color(0xff9549DB),
                  Color(0xffA447DB),
                  Color(0xffAA46DB),
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/Logo White.png",
                  height: 70,
                  width: 120,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
              ),
              height: 460,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xff111111),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(hintText: "Name"),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your name";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        return signUpProvider.changeName(value!);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(hintText: "Email"),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter email";
                        } else if (!value.contains("@")) {
                          return "Email is not valid";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        return signUpProvider.changeEmail(value!);
                      },
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(hintText: "Password"),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter password";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        return signUpProvider.changePassword(value!);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: phoneNumberController,
                      decoration:
                          const InputDecoration(hintText: "Phone Number"),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter phoneNumber";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        return signUpProvider.changePhoneNumber(value!);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    signUpProvider.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(274, 48),
                              primary: const Color(0xff4458DB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                  side: BorderSide.none),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                signUp(signUpProvider);
                                navigateTo(page: const ToursScreen2());
                              }
                            },
                            child: const Text("Sign up"),
                          ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0, left: 90),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: IconButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                        }
                      },
                      icon: const Icon(
                        Icons.facebook_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(28)),
                    child: IconButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                        }
                      },
                      icon: const Icon(
                        Icons.g_mobiledata,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      navigateTo(page: SignInScreen());
                    },
                    child: const Text(
                      "SignIn",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future signUp(SignUpProvider signUpProvider) async {
    signUpProvider.changeLoading(true);
    Response response =
        await post(Uri.parse("http://alcaptin.com/api/register"), body: {
      "first_name": "mohammed",
      "last_name": "hussein",
      "name": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
      "phone": phoneNumberController.text,
      "age": "28",
      "gender": "male"
    });

    print("Email is : ${signUpProvider.email}");
    print("Response Is ${response.body}");

    signUpProvider.changeLoading(false);
  }
}
