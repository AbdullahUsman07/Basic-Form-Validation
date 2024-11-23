import 'package:flutter/material.dart';

void main() {
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "QAU Food Ordering System",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
                headingRowHeight: 40, 
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
                headingRowColor: MaterialStateProperty.all(Colors.grey[300]),
                border: TableBorder.all(
                  color: Colors.black, 
                  width: 1.5,
                  style: BorderStyle.solid,
                ),
                columns:  const[
                  DataColumn(label:Text('Huts')),
                  DataColumn(label: Text('Foods')),
                  DataColumn(label: Text('Beverages')),
                  DataColumn(label: Text('Fruit And Salads')),
                  DataColumn(label: Text('My Order')),
                ],
                rows:  [
                  DataRow(cells: [
                    DataCell(InkWell(
                      onTap: (){
                        debugPrint("Working");
                      },
                      child: const Text('Jungle Huts'))),
                    DataCell(Text('Pizza')),
                    DataCell(Text('Coke')),
                    DataCell(Text('Apple Salad')),
                    DataCell(Text('Order 1')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Karachi Huts')),
                    DataCell(Text('Burger')),
                    DataCell(Text('Pepsi')),
                    DataCell(Text('Fruit Mix')),
                    DataCell(Text('Order 2')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Majeed Huts')),
                    DataCell(Text('Pasta')),
                    DataCell(Text('Sprite')),
                    DataCell(Text('Greek Salad')),
                    DataCell(Text('Order 3')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Chemistry Huts')),
                    DataCell(Text('Sushi')),
                    DataCell(Text('Fanta')),
                    DataCell(Text('Vegetable Salad')),
                    DataCell(Text('Order 4')),
                  ]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

