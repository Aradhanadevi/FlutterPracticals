import 'package:flutter/material.dart';
import 'db_helper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DBHelper _dbHelper = DBHelper();
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> _items = [];

  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  void _refreshItems() async {
    final data = await _dbHelper.getItems();
    setState(() {
      _items = data;
    });
  }

  void _showForm([int? id]) {
    if (id != null) {
      final existing = _items.firstWhere((item) => item['id'] == id);
      _controller.text = existing['name'];
    }

    showModalBottomSheet(
        context: context,
        builder: (_) => Padding(
              padding: const EdgeInsets.all(15),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(labelText: 'Item Name'),
                ),
                ElevatedButton(
                    child: Text(id == null ? 'Add' : 'Update'),
                    onPressed: () {
                      if (id == null) {
                        _dbHelper.insertItem(_controller.text);
                      } else {
                        _dbHelper.updateItem(id, _controller.text);
                      }
                      _controller.clear();
                      Navigator.pop(context);
                      _refreshItems();
                    })
              ]),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SQLite CRUD')),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, i) => Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            title: Text(_items[i]['name']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () => _showForm(_items[i]['id'])),
                IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _dbHelper.deleteItem(_items[i]['id']);
                      _refreshItems();
                    }),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () => _showForm()),
    );
  }
}
