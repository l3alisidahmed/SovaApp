// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sova/models/manage_user.dart';
import 'package:sova/presentation/log_in.dart';
import 'package:sova/component/sovBarWithoutArrowback.dart';
import 'package:validators/validators.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _value = true;
  final _formkey = GlobalKey<FormState>();
  // I Added This
  final newUser = NewUser();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    sovBarWithoutArrowback(
                      Txt1: "Sign Up",
                      Txt2: "Create your account",
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Full Name *',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 76, 255),
                            ),
                            decoration: const InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.blue)),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1.5, color: Colors.red),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.blue),
                                ),
                                labelText: 'Enter your Name',
                                hintText: "Mohammed",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30)),
                            validator: (value) {
                              if (value!
                                  .isEmpty /* || RegExp([\S]+$).hasMatch(value)*/) {
                                return 'please enter your name';
                              }
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Email *',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            // I Added This
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 76, 255),
                            ),
                            decoration: const InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.blue)),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1.5, color: Colors.red),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.blue),
                                ),
                                labelText: 'Enter your email',
                                hintText: "example@gmail.com",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30)),
                            validator: (value) {
                              if (value!
                                      // I Changed This
                                      .isEmpty ||
                                  !value.contains('@')) {
                                return 'Invalid email';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Password *',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            // I Added This
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 76, 255),
                            ),
                            decoration: const InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.blue)),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1.5, color: Colors.red),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.blue),
                                ),
                                labelText: 'Must be 8 charcter or more',
                                hintText: "********",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30)),
                            validator: (value) {
                              if (value!.isEmpty || value.length < 8) {
                                return 'your password must be at least 8 charcater';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Repeat Password *',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 76, 255),
                            ),
                            decoration: const InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.blue)),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1.5, color: Colors.red),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.blue),
                                ),
                                labelText: 'Repeat your password',
                                hintText: "********",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Colors.grey),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30)),
                            validator: (value) {
                              if (value!
                                  .isEmpty /* || RegExp([\S]+$).hasMatch(value)*/) {
                                return 'your password must be at least 8 charcater';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _value,
                                onChanged: (value) {
                                  setState(() {
                                    if (_value == false) {
                                      print(_value);
                                      _value = true;
                                    } else {
                                      print(_value);
                                      _value = false;
                                    }
                                  });
                                },
                              ),
                              Row(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "I agree to the",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Terms & Condition",
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return LogIn();
                                      },
                                    ),
                                  );
                                });
                                // I Added This
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Sign Up Succefly')));
                                dynamic user =
                                    await newUser.registerUser(email, password);
                                if (user == null) {
                                  print('ERROR!!');
                                } else {
                                  print("Signed Up Successfully");
                                  print(user.uid);
                                  print(user.email);
                                }
                              }
                            },
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      vertical: 25, horizontal: 168)),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(37, 78, 218, 1)),
                            ),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return LogIn();
                                },
                              ));
                            },
                            child: const Text(
                              "Log in",
                              style: TextStyle(
                                  color: Color.fromRGBO(37, 78, 218, 1)),
                            )),
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}

class SignInput extends StatefulWidget {
  SignInput({super.key});

  final _formkey = GlobalKey<FormState>();
  @override
  State<SignInput> createState() => _SignInputState();
}

class _SignInputState extends State<SignInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: widget._formkey,
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email *',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 76, 255),
                ),
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    ),
                    labelText: 'Enter your email',
                    hintText: "example@gmail.com",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 25, horizontal: 30)),
                validator: (value) {
                  if (value!.isEmpty /* || RegExp([\S]+$).hasMatch(value)*/) {
                    return 'Invalid email';
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
