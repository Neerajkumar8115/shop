import 'package:codepur/Cart_page.dart';
import 'package:codepur/Preview.dart';
import 'package:codepur/models/catalogModel.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        shadowColor: Colors.black,
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListTile(
            leading: Image.network(item.image),
            title: Column(children: [Text(item.name)]),
            subtitle: Column(children: [Text(item.decs)]),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: [
              ButtonBar(alignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Preview(
                                    catalog: item,
                                  )));
                    },
                    child: Text(
                      "Buy",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
            ]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Preview(
                    catalog: item,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
