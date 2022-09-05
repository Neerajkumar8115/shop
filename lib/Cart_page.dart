import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.done),
                title: Text("Item 1"),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle_outlined),
                  tooltip: 'remove',
                  onPressed: () {},
                ),
              ),
            ),
          )),
          Divider(
            height: 2,
          ),
          Container(
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  " \u{20B9}99999",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Buying not supporting yet !'),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      'Buy',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
