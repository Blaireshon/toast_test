import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sticky_headers_practice/sticky_headers_practice.dart';

class StickyHeadersText extends StatelessWidget {
  const StickyHeadersText({
    super.key,
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
        title: const Text('Sticky Headers Two-Dimension  Table'),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              refreshData();
            },
          ),
        ],
      ),
      body: MakeTable(
        key: makeTableKey,
        columnLength: titleColumn.length,
        rowLength: titleRow.length,
        columnHeaderBuilder: (i) => Text(titleColumn[i]),
        rowHeaderBuilder: (i) => Text(titleRow[i]),
        cellData: data,
        // cellData: (i, j) =>  Text(data[i][j]),
        indexCell: const Text('Index'),
      ),
    );
  }

  /// data 업데이트
  void refreshData() {
    /// 1초에 1000개 수정
    Timer.periodic(const Duration(milliseconds: 1), (Timer timer) {
      Random random = Random();
      int rowIndx = random.nextInt(1000);
      int columnIndx = random.nextInt(5);
      String newValue = random.nextInt(1000).toString();

      // 값 업데이트
      makeTableKey.currentState!.updateCellValue(rowIndx, columnIndx, newValue);

      // 테두리 스타일 변경
      makeTableKey.currentState!.setCellBorderFlash(rowIndx, columnIndx);
    });
  }
}
