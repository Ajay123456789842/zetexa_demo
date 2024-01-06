import 'package:demo/card_outlin.dart';
import 'package:demo/widgets/container_outline.dart';
import 'package:demo/widgets/textoutline.dart';
import 'package:flutter/material.dart';
import 'package:demo/data/dummy_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  TextEditingController con = TextEditingController();

  List<String> found_countries = [];

  List<String> found_regional_countries = [];

  @override
  void initState() {
    found_countries = local_countries_data;
    found_regional_countries = regional_countries_data;
    super.initState();
  }

  void searchCountries(String enteredword) {
    List<String> results, reg_results = [];

    if (enteredword.isEmpty) {
      results = local_countries_data;
      reg_results = regional_countries_data;
    } else {
      reg_results = regional_countries_data
          .where((country) =>
              country.toLowerCase().contains(enteredword.toLowerCase()))
          .toList();

      results = local_countries_data
          .where((country) =>
              country.toLowerCase().contains(enteredword.toLowerCase()))
          .toList();
    }
    setState(() {
      found_regional_countries = reg_results;
      found_countries = results;
    });
    print(found_countries);
    print(found_regional_countries);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xdb000000),
              height: 250,
              width: 400,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextOutline(
                      text: "Hi ,Welcome",
                      color: Color(0xe6ffffff),
                      fontsize: 22,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextOutline(
                      text: "Customize your own pack",
                      color: Color(0xe6ffffff),
                      fontsize: 17,
                      fontweight: FontWeight.normal,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextOutline(
                      text: "accross 160 Countries",
                      color: Color(0xe6ffffff),
                      fontsize: 14,
                      fontweight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: con,
                onChanged: (value) {
                  searchCountries(con.text);
                },
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: DefaultTabController(
                  initialIndex: 0,
                  length: 2,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TabBar(isScrollable: true, tabs: [
                        Tab(
                          child: ContainerOutline(
                            height: 80,
                            width: 150,
                            color: Colors.white,
                            child: const TextOutline(
                              text: "Local eSims",
                              color: Colors.black,
                              fontsize: 18,
                              fontweight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Tab(
                          child: ContainerOutline(
                            color: Colors.white,
                            height: 80,
                            width: 150,
                            child: const TextOutline(
                              text: "Regionl eSims",
                              color: Colors.black,
                              fontsize: 18,
                              fontweight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ]),
                      Expanded(
                        child: TabBarView(children: [
                          CardLocalOutline(
                            text: "local",
                            countries: found_countries,
                          ),
                          CardLocalOutline(
                            text: "regional",
                            countries: found_regional_countries,
                          )
                        ]),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
