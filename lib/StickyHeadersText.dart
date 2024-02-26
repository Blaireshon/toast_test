import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers_practice/makeTable.dart';
//import 'package:table_sticky_headers/table_sticky_headers.dart';
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

  double _scrollOffsetX = 0.0;
  double _scrollOffsetY = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sticky Headers Two-Dimension  Table'),
        backgroundColor: Colors.amber,
      ),
      // body: StickyHeadersTable(
      //   cellDimensions: CellDimensions.base,
      //
      //   columnsLength: titleColumn.length,
      //   rowsLength: titleRow.length,
      //   columnsTitleBuilder: (i) => Text(titleColumn[i]),
      //   rowsTitleBuilder: (i) => Text(titleRow[i]),
      //   contentCellBuilder: (i, j) => Text(data[i][j]),
      //   legendCell: Text('Sticky Legend'),
      // ),
      body: MakeTable(columnLenght: titleColumn.length, rowLenght: titleRow.length, columnTitleBuilder:(i) => Text(titleColumn[i]), rowTitleBuilder: (i) => Text(titleRow[i]), cellData:(i, j) => Text(data[i][j]),

      ),
    );
  }

}
