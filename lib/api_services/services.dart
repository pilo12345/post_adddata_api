import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_adddata_api/api_routs/api_routes.dart';

class SignUpService {
  static Future signUpService(Map<String, dynamic> body) async {
    http.Response response =
        await http.post(Uri.parse(ApiRoutes.signUp), body: body);
    print('====>>>>>>>>>${jsonDecode(response.body)}');
    return jsonDecode(response.body);
  }
}

class SearchDemo {
  static Future searchService() async {
    Map<String, String> header = {
      "X-RapidAPI-Host": "car-data.p.rapidapi.com",
      "X-RapidAPI-Key": "1ca873c421msh4bcadf5131963b8p104748jsna9342ed74b00"
    };
    http.Response response =
        await http.get(Uri.parse(ApiRoutes.searchDemo1), headers: header);
  }
}

// class SearchRepo {
//   static var data = [];
//   static
// }

// class SignUpRepo {
//   // static Future signUpUser(
//   //     {String? userName,
//   //     String? lastName,
//   //     String? firstName,
//   //     String? passWord}) async {
//   //   Map<String, dynamic> reqBody = {
//   //     "first_name": firstName,
//   //     "last_name": lastName,
//   //     "username": userName,
//   //     "password": passWord,
//   //     "avatar":
//   //         "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
//   //   };
//   //   http.Response response =
//   //       await http.post(Uri.parse(ApiRoutes.signUp), body: reqBody);
//   //
//   //   var result = jsonDecode(response.body);
//   //   print("Sign Up Response====>> ${jsonDecode(response.body)}");
//   //   return result;
//   // }
//
//   static Future signUpUser({Map<String, dynamic>? reqBody}) async {
//     http.Response response =
//         await http.post(Uri.parse(ApiRoutes.signUp), body: reqBody);
//
//     var result = jsonDecode(response.body);
//     print("Sign Up Response====>> ${jsonDecode(response.body)}");
//     return result;
//   }
//
//   static Future<bool> Signinuser(
//       {required String uname, required String password}) async {
//     Map<String, dynamic> body = {
//       "username": uname,
//       "password": password,
//     };
//     http.Response response = await http.post(
//       Uri.parse(ApiRoutes.signIn),
//       body: body,
//     );
//
//     var ok = jsonDecode(response.body);
//
//     print(ok);
//
//     if (ok["status"] == true) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
