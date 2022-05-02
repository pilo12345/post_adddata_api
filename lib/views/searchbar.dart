import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:post_adddata_api/api_routs/api_routes.dart';
import 'package:post_adddata_api/api_services/services.dart';
import 'package:http/http.dart' as http;
import 'package:post_adddata_api/model/search_model.dart';

import 'appbar_search.dart';

class Search1 extends StatefulWidget {
  const Search1({Key? key}) : super(key: key);

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  List? dataList;

  searchServices() async {
    http.Response response = await http.get(Uri.parse(ApiRoutes.search));

    if (response.statusCode == 200) {
      setState(() {
        dataList = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    searchServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("search"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchDemo(dataList!),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: dataList == null ? 0 : dataList!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${dataList![index]['name']}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "${dataList![index]['email']}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const Divider(
                  indent: 1,
                  color: Colors.grey,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
