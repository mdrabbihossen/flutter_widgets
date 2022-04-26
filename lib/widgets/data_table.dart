import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/data_table_data.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('DataTable'),
        elevation: 0,
      ),
      body: bodyData(),
    );
  }

  Widget bodyData() => ListView(
        scrollDirection: Axis.horizontal,
        children: [
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                label: Text(
                  'First Name',
                  style: TextStyle(color: Colors.white),
                ),
                numeric: false,
                onSort: (index, b) {},
              ),
              DataColumn(
                label: Text(
                  'Last Name',
                  style: TextStyle(color: Colors.white),
                ),
                numeric: false,
                onSort: (index, b) {},
              ),
              DataColumn(
                label: Text(
                  'Email',
                  style: TextStyle(color: Colors.white),
                ),
                numeric: false,
                onSort: (index, b) {},
              ),
              DataColumn(
                label: Text(
                  'Phone',
                  style: TextStyle(color: Colors.white),
                ),
                numeric: false,
                onSort: (index, b) {},
              ),
              DataColumn(
                label: Text(
                  'Address',
                  style: TextStyle(color: Colors.white),
                ),
                numeric: false,
                onSort: (index, b) {},
              ),
              DataColumn(
                label: Text(
                  'City',
                  style: TextStyle(color: Colors.white),
                ),
                numeric: false,
                onSort: (index, b) {},
              ),
            ],
            rows: dataTableData
                .map(
                  (e) => DataRow(
                    selected: true,
                    cells: <DataCell>[
                      DataCell(
                        Text(
                          e.firstName,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      DataCell(
                        Text(
                          e.lastName,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      DataCell(
                        Text(e.email, style: TextStyle(color: Colors.white)),
                      ),
                      DataCell(
                        Text(e.phone, style: TextStyle(color: Colors.white)),
                      ),
                      DataCell(
                        Text(e.address, style: TextStyle(color: Colors.white)),
                      ),
                      DataCell(
                        Text(e.city, style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      );
}
