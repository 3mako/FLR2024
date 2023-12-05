import 'package:flutter/material.dart';

//test

void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      home: TableApp(),
    );
  }
}

class TableApp extends StatefulWidget {
  @override
  _TableAppState createState() => _TableAppState();
}

class _TableAppState extends State<TableApp> {
  List<List<String>> tableData = List.generate(5, (index) => List.generate(3, (index) => ''));

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    
    Center(child: Text('Home')),

    Center(child: Text('食材登録')),
    Center(child: Text('ロス量')),
    Center(child: Text('マイページ')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('食材登録'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text('食材名'),
                  ),
                  DataColumn(
                    label: Text('賞味期限'),
                  ),
                  DataColumn(
                    label: Text('数量：個数'),
                  ),
                ],
                rows: tableData.map((row) {
                  return DataRow(
                    cells: row.map((cellData) {
                      return DataCell(
                        TextField(
                          onChanged: (value) {
                            setState(() {
                              cellData = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'text',
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: '食材登録',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_shopping_cart),
            label: 'ロス量',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'マイページ',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}