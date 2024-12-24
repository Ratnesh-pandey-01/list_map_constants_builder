import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/detail.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  /* List<Map<String, dynamic>> mData = [
    {
      "name": "Ratnesh",
      "age": 24,
      "gender": "male",
      "address": "India",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6kdQJKFiJ4mxhKVK6S6e7dMt7xlpoxqKA9Q&s"
    },
    {
      "name": "Vikram",
      "age": 28,
      "gender": "male",
      "address": "england",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlg6tLwMxBIgQaGq53bMceE0dkfw2dN1mCtQ&s"
    },
    {
      "name": "Ashish",
      "age": 27,
      "gender": "male",
      "address": "bihar",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ35P-MlfiDJzb8al_A7QygscvlwrUZuhuxmA&s"
    },
    {
      "name": "Sumit",
      "age": 29,
      "gender": "male",
      "address": "newzland",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_t--dCS-7ixy7HW5rI8sRNeRpjXYkxplVyQ&s"
    },
    {
      "name": "Ajay",
      "age": 28,
      "gender": "male",
      "address": "India",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2jOmdq_-dbxaXa3oPJV8vZjVKsBLwG131zA&s"
    },
    {
      "name": "Raghav",
      "age": 26,
      "gender": "male",
      "address": "India",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSPBZQR8Ul4xcWJjlrLyjAggqwN1IbOjsnWA&s"
    },
    {
      "name": "Ajay",
      "age": 25,
      "gender": "male",
      "address": "itly",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsBxSrq_v6lsVziOKwTIUTt2ZsWgiDeiT9cA&s"
    },
    {
      "name": "Ratnesh",
      "age": 24,
      "gender": "male",
      "address": "usa",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6kdQJKFiJ4mxhKVK6S6e7dMt7xlpoxqKA9Q&s"
    },
    {
      "name": "Vikram",
      "age": 28,
      "gender": "male",
      "address": "uk",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlg6tLwMxBIgQaGq53bMceE0dkfw2dN1mCtQ&s"
    },
    {
      "name": "Ashish",
      "age": 27,
      "gender": "male",
      "address": "dubai",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ35P-MlfiDJzb8al_A7QygscvlwrUZuhuxmA&s"
    },
    {
      "name": "Sumit",
      "age": 29,
      "gender": "male",
      "address": "kanpu",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_t--dCS-7ixy7HW5rI8sRNeRpjXYkxplVyQ&s"
    },
    {
      "name": "Ajay",
      "age": 28,
      "gender": "male",
      "address": "pok",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2jOmdq_-dbxaXa3oPJV8vZjVKsBLwG131zA&s"
    },
    {
      "name": "Raghav",
      "age": 26,
      "gender": "male",
      "address": "japan",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSPBZQR8Ul4xcWJjlrLyjAggqwN1IbOjsnWA&s"
    },
    {
      "name": "Ajay",
      "age": 25,
      "gender": "male",
      "address": "france",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsBxSrq_v6lsVziOKwTIUTt2ZsWgiDeiT9cA&s"
    },
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: Constants.mData.length,
          itemBuilder: (_, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Detail(name: Constants.mData[index]["name"])));
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(Constants.mData[index]["image"]),
              ),
              title: Text(Constants.mData[index]["name"].toString()),
              subtitle: Text(Constants.mData[index]["gender"]),
              trailing: Text(Constants.mData[index]["address"]),
            );
          }),
    );
  }
}
