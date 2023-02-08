import 'package:assignment/pages/tabs/mabanta_team.dart';
import 'package:assignment/pages/tabs/salas_team.dart';
import 'package:flutter/material.dart';
import 'models/employee.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController tabController;
  // ignore: prefer_typing_uninitialized_variables
  var size, height, width;

  // ignore: non_constant_identifier_names
  List team1 = [
    Employee(
        id: 1,
        name: 'Francis Mabanta',
        address: "83 West County Ave. Van Nuys, CA 91405",
        position: 'Director',
        birthday: 'Jan 16, 1991',
        age: '31',
        image: 'assets/images/Team1-Employee-1.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
    Employee(
        id: 2,
        name: 'Garland Jerold Blackman',
        address: "744 Grandrose St. San Jose, CA 95122",
        position: 'Chief marketing officer',
        birthday: 'March 12, 1991',
        age: '31',
        image: 'assets/images/Team1-Employee-1.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
    Employee(
        id: 3,
        name: 'Raymond Unique Turnbull',
        address: '8578 W. Market Court Tulare, CA 93274',
        position: 'Chief technology officer',
        birthday: 'October 15, 1994',
        age: '28',
        image: 'assets/images/Team1-Employee-2.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
    Employee(
        id: 4,
        name: 'Delaney Millard',
        address: '7690 South New Lane Santa Ana, CA 92703',
        position: 'Human resources manager',
        birthday: 'July 16, 1995',
        age: '29',
        image: 'assets/images/Team1-Employee-3.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
    Employee(
        id: 5,
        name: 'Ariel Noyabrina Lum',
        address: '83 West County Ave. Van Nuys, CA 91405',
        position: 'Marketing specialist',
        birthday: 'August 5, 1992',
        age: '32',
        image: 'assets/images/Team1-Employee-4.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
    Employee(
        id: 6,
        name: 'Sherry Robin Krupin',
        address: '39 Old Wall Street Huntington Park, CA 90255',
        position: 'Business analyst',
        birthday: 'June 26, 1985',
        age: '38',
        image: 'assets/images/Team1-Employee-5.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
    Employee(
        id: 7,
        name: 'Abram Bertrand Gilbert',
        address: '94 Bellevue Ave. El Cajon, CA 92021',
        position: 'Human resource personnel',
        birthday: 'May 5, 1991',
        age: '31',
        image: 'assets/images/Team1-Employee-6.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
  ];

  List team2 = [
    Employee(
        id: 1,
        name: 'Lloyd Anthony Salas',
        address: "744 Grandrose St. San Jose, CA 95122",
        position: 'Media Director',
        birthday: 'March 16, 1991',
        age: '31',
        image: 'assets/images/Team1-Employee-1.png',
        coverPhoto: 'assets/images/Office-Team1.jpg'
    ),
    Employee(
        id: 2,
        name: 'Ezekiel Romy Mitchell',
        address: '94 Bellevue Ave. El Cajon, CA 92021',
        position: 'Chief financial officer',
        birthday: 'September 16, 1992',
        age: '30',
        image: 'assets/images/Team2-Employee-1.png',
        coverPhoto: 'assets/images/Office-Team2.jpg'
    ),
    Employee(
        id: 3,
        name: 'Jada Braxton',
        address: '39 Old Wall Street Huntington Park, CA 90255',
        position: 'Executive assistants',
        birthday: 'August 7, 1992',
        age: '32',
        image: 'assets/images/Team2-Employee-2.png',
        coverPhoto: 'assets/images/Office-Team2.jpg'
    ),
    Employee(
        id: 4,
        name: 'Emilia Keys',
        address: '83 West County Ave. Van Nuys, CA 91405',
        position: 'Marketing manager',
        birthday: 'November 12, 1996',
        age: '28',
        image: 'assets/images/Team2-Employee-3.png',
        coverPhoto: 'assets/images/Office-Team2.jpg'
    ),
    Employee(
        id: 5,
        name: 'Miley Moses',
        address: '7690 South New Lane Santa Ana, CA 92703',
        position: 'Product manager',
        birthday: 'March 16, 1995',
        age: '28',
        image: 'assets/images/Team2-Employee-4.png',
        coverPhoto: 'assets/images/Office-Team2.jpg'
    ),
    Employee(
        id: 6,
        name: 'Tylor Goode',
        address: '7690 South New Lane Santa Ana, CA 92703',
        position: 'Project manager',
        birthday: 'April 2, 1990',
        age: '30',
        image: 'assets/images/Team2-Employee-5.png',
        coverPhoto: 'assets/images/Office-Team2.jpg'
    ),
    Employee(
        id: 7,
        name: 'Pelagiya Walmsley',
        address: '8578 W. Market Court Tulare, CA 93274',
        position: 'Finance manager',
        birthday: 'March 2, 1996',
        age: '27',
        image: 'assets/images/Team2-Employee-6.png',
        coverPhoto: 'assets/images/Office-Team2.jpg'
    ),
  ];

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          title: Text('Simple App', style: TextStyle(color: Colors.white)),
        ),
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xFFFFFFFF),
          indicatorColor: Colors.white,
          controller:  tabController,
          tabs: const [
            Tab(child: Text("Gaming Department")),
            Tab(child: Text("Media Department")),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/Office-bg.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop)
            )
        ),
        child: TabBarView(
          controller: tabController,
          children: [
            MabantaTeam(teamem: team1),
            SalasTeam(teamem: team2),
          ],
        ),
      ),
    );
  }
}