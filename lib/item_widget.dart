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
            title: Text(item.name),
            subtitle: Text(item.decs),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: [
              // TextButton(
              //   onpressed(){},
              //   Text("\u{20B9}${item.price}"),
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontWeight: FontWeight.w300,
              // ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Preview(
                                  catalog: item,
                                )));
                  },
                  child: Text("Buy")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Add to Cart'),
              ),
            ]),
            // onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Preview(
            //       catalog: item,
            //     ),
            //     ),
            //   );
            // },
          ),
        ),
      ),
    );
  }
}
