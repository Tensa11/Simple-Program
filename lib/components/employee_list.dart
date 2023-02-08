import 'package:assignment/models/employee.dart';
import 'package:flutter/material.dart';
import '../animation/slide_left.dart';
import '../pages/information_page.dart';

class EmployeeList extends StatelessWidget {

  final Employee members;

  const EmployeeList({
    required this.members,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        leading: CircleAvatar(backgroundImage: NetworkImage(members.image.toString())),
        title: Text(members.name ?? 'No Name'),
        subtitle: Text(members.position ?? 'Not Related'),
        onTap: () {
          Navigator.push(
              context, SlideLeft(page: PageTwo(information: members))
          );
        },
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}