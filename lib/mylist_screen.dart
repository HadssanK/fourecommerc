import 'package:flutter/material.dart';


class myproducts extends StatelessWidget {
  const myproducts({
    super.key,
    required this.arrdata,
  });

  final List<Map<String, String>> arrdata;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: arrdata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0,
          mainAxisExtent: 250.0,
        ),
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(arrdata[index]['image'] ?? ''),
                SizedBox(height: 10),
                Text(arrdata[index]['name'] ?? ''),
                Text(arrdata[index]['price'] ?? ''),
              ],
            ),
          );
        },
      ),
    );
  }
}
