import 'package:financfy_cashbooks/full_card_info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Financfy",
      theme: ThemeData(primaryColor: Colors.white),
      home: const MyHomePage(title: 'Financfy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: _buildContentList(),
          ),
          Positioned(left: 20, right: 20, bottom: 20, child: _buildCreateCashBookButton())
        ],
      ),
    );
  }

  Widget _buildCreateCashBookButton() {
    return FloatingActionButton.extended(
      backgroundColor: const Color(0xFF006980),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      label: const Row(
        children: [
          Icon(
            Icons.add,
            size: 20,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "Create Cashbook",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontFamily: 'Metropolis_Regular',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFFFF)),
          )
        ],
      ),
      onPressed: () {},
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
          Text(
            "Cashbooks",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Metropolis_Regular',
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 40,
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildContentList() {
    var items = getItems();
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      itemBuilder: (context, index) => items[index],
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: items.length
    );
  }

  List<FullCardInfo> getItems(){
    return [
      FullCardInfo(),
      FullCardInfo(),
      FullCardInfo(),
      FullCardInfo(),
      FullCardInfo(),
      FullCardInfo(),
    ];
  }
}
