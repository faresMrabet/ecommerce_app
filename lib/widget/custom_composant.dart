import 'package:flutter/material.dart';

class CustomComposant extends StatelessWidget {
  final String? name;

  const CustomComposant({super.key, this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ]),
              width: 140,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.5),
                image: DecorationImage(
                  image: AssetImage('assets/images/nikerouge.png'),
                ),
              ),
            ),
            Text('$name'),
            Text(
              'Men White & Black ',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Colourblocked IDP ',
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                Text('4.5'),
                Icon(Icons.favorite_border),
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black)),
                ),
                Text(
                  ' 4300 SOLD',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
