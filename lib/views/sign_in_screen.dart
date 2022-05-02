import 'package:flutter/material.dart';
import 'package:post_adddata_api/api_services/services.dart';

import 'homepage.dart';

// class SignIn extends StatefulWidget {
//   const SignIn({Key? key}) : super(key: key);
//
//   @override
//   _SignInState createState() => _SignInState();
// }
//
// class _SignInState extends State<SignIn> {
//   final _username = TextEditingController();
//   final _password = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: _username,
//                 decoration: const InputDecoration(hintText: "Username"),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextField(
//                 controller: _password,
//                 decoration: const InputDecoration(hintText: "Password"),
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                   onPressed: () async {
//                     bool prince = await SignUpRepo.Signinuser(
//                         uname: _username.text, password: _password.text);
//                     print(prince);
//                     if (prince == true) {
//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         content: Text("login ok"),
//                         backgroundColor: Colors.green,
//                       ));
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         content: Text(
//                           "not ok login",
//                         ),
//                         backgroundColor: Colors.red,
//                       ));
//                     }
//                   },
//                   child: const Text("SignUp"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
