import 'package:flutter/material.dart';
import 'package:tripit_project/core/helper_methods.dart';
import 'package:tripit_project/screens/sign_up_screen/view.dart';
import 'package:tripit_project/screens/tours_screen2/view.dart';
import 'login_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';

class SignInScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  SignInScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    LoginProvider loginProvider = Provider.of<LoginProvider>(context);
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
                  height: 40,
                ),
                Image.asset(
                  "assets/images/Logo White.png",
                  height: 100,
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
              height: 350,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(
                          color: Color(0xff111111),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    const SizedBox(
                      height: 25,
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
                        return loginProvider.changeEmail(value!);
                      },
                    ),
                    const SizedBox(
                      height: 20,
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
                        loginProvider.changePassword(value!);
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 120.0),
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: Color(0xff4458DB),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    loginProvider.isLoading
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
                                login(loginProvider);
                                navigateTo(
                                    page: const ToursScreen2());
                              }
                            },
                            child: const Text("Sign in"),
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
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  const Text("Don’t have an account?"),
                  TextButton(
                    onPressed: () {
                      navigateTo(page: SignUpScreen());
                    },
                    child: const Text("SignUp"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future login(LoginProvider loginProvider) async {
    loginProvider.changeLoading(true);
    Response response =
        await post(Uri.parse("http://alcaptin.com/api/login"), body: {
      "email": emailController.text,
      "password": passwordController.text,
    });

    print("Email is : ${loginProvider.email}");
    print("Response Is ${response.body}");

    loginProvider.changeLoading(false);
  }
}
