import 'package:flutter/material.dart';
import 'package:post_adddata_api/api_services/services.dart';
import 'package:post_adddata_api/model/requestmodel/datamodel.dart';
import 'package:post_adddata_api/model/requestmodel/signup_model_data.dart';

import 'homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _username = TextEditingController();
  final _passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _firstName,
                decoration: const InputDecoration(hintText: "firstName"),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _lastName,
                decoration: const InputDecoration(hintText: "lastName"),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _username,
                decoration: const InputDecoration(hintText: "userName"),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passWord,
                decoration: const InputDecoration(hintText: "passWord"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  SignUpScreen info = SignUpScreen();
                  info.firstName = _firstName.text;
                  info.lastName = _lastName.text;
                  info.username = _username.text;
                  info.password = _passWord.text;
                  info.avatar = '';

                  SignUpService.signUpService(info.toJson()).then((value) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Succesfuly"))));
                },
                child: const Text("SignUp"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   final _fistName = TextEditingController();
//   final _lastName = TextEditingController();
//   final _userName = TextEditingController();
//   final _passWord = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 150,
//                   width: 150,
//                   color: Colors.grey,
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 TextField(
//                   controller: _fistName,
//                   decoration: const InputDecoration(hintText: "Fist Name"),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 TextField(
//                   controller: _lastName,
//                   decoration: const InputDecoration(hintText: "Last Name"),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 TextField(
//                   controller: _userName,
//                   decoration: const InputDecoration(hintText: "UserName"),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 TextField(
//                   controller: _passWord,
//                   decoration: const InputDecoration(hintText: "Password"),
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // SignUpRepo.signUpUser(
//                     //         firstName: _fistName.text,
//                     //         lastName: _lastName.text,
//                     //         userName: _userName.text,
//                     //         passWord: _passWord.text)
//                     //     .then(
//                     //   (value) => ScaffoldMessenger.of(context).showSnackBar(
//                     //     SnackBar(
//                     //       content: Text("Successfully SignUp"),
//                     //       duration: Duration(seconds: 3),
//                     //     ),
//                     //   ),
//                     // );
//
//                     Autogenerated _model = Autogenerated();
//                     _model.firstName = _fistName.text;
//                     _model.lastName = _lastName.text;
//                     _model.username = _userName.text;
//                     _model.password = _passWord.text;
//                     _model.avatar =
//                         "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
//
//                     SignUpRepo.signUpUser(reqBody: _model.toJson()).then(
//                       (value) => ScaffoldMessenger.of(context)
//                           .showSnackBar(
//                             const SnackBar(
//                               content: Text("Successfully SignUp"),
//                               duration: Duration(seconds: 3),
//                             ),
//                           )
//                           .closed
//                           .then(
//                             (value) => Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const HomePage(),
//                               ),
//                             ),
//                           ),
//                     );
//                   },
//                   child: const Text("SignUP"),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
