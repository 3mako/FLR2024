import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '冷蔵庫管理アプリ',
      home: HomeScreen(),
    );
  }
}
 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('冷蔵庫管理'),
      ),
      body: Column(
        children: <Widget>[
          SearchBar(),
          Expanded(child: FoodList()),
          RecipeSuggestions(),
        ],
      ),
    );
  }
}
 
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: '検索...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
 
class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('牛乳'),
          subtitle: Text('数量: 2 - 賞味期限: 2023/11/30'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {/* 編集機能 */},
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {/* 削除機能 */},
              ),
            ],
          ),
        ),
        // 他の食品アイテム...
      ],
    );
  }
}
 
class RecipeSuggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text('レシピ提案...'),
    );
  }
}