import 'package:flutter/material.dart';

import 'pages/consulta_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          // seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPage = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Home'),
    const ConsultaMain(),
    const Text('Cadastrar'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Missão Certificação',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NavigationRail(
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: Text('Home'),
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.library_books,
                  ),
                  label: Text('Consultar'),
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.library_add,
                  ),
                  label: Text('Cadastrar'),
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
              ],
              selectedIndex: _selectedPage,
              onDestinationSelected: _onItemTapped,
              labelType: NavigationRailLabelType.selected,
              useIndicator: true,
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: _widgetOptions.elementAt(_selectedPage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
