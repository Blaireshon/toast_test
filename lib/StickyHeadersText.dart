import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers_practice/makeTable.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';
//import 'package:sticky_headers_practice/sticky_headers_practice.dart';

class StickyHeadersText extends StatelessWidget {
  StickyHeadersText({
    required this.data,
    required this.titleColumn,
    required this.titleRow,
  });

  final List<List<String>> data;
  final List<String> titleColumn;
  final List<String> titleRow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sticky Headers Two-Dimension  Table'),
        backgroundColor: Colors.amber,
      ),

      body: MakeTable(
          columnLength: titleColumn.length,
          rowLength: titleRow.length,
          columnHeaderBuilder: (i) => Text(titleColumn[i]),
          rowHeaderBuilder: (i) => Text(titleRow[i]),
          cellData: (i, j) => Text(data[i][j]),
          indexCell: Text('Index'),

      ),

    );
  }
}
