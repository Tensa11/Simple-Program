import 'package:flutter/material.dart';
import '../../components/employee_list.dart';

class SalasTeam extends StatelessWidget {

  final List teamem;

  const SalasTeam({
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
