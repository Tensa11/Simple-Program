import 'package:assignment/components/employee_list.dart';
import 'package:flutter/material.dart';

class MabantaTeam extends StatelessWidget {
  
  final List teamem;
  
  const MabantaTeam({
    required this.teamem,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...teamem.map((teamem) => EmployeeList(
            members: teamem
          )
        ).toList()
      ],
    );
  }
}
