import 'package:crud_application/screens/update_student_page.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({Key? key}) : super(key: key);

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  deleteUser(id) {
    print('User Deleted');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Table(
          border: TableBorder.all(),
          columnWidths: <int, TableColumnWidth>{
            1: const FixedColumnWidth(140),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Center(
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Center(
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Center(
                      child: Text(
                        'Action',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                const TableCell(
                  child: Center(
                    child: Text(
                      'Sonam',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const TableCell(
                  child: Center(
                    child: Text(
                      'sona@gs.com',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const UpdateStudentPage()),
                            ),
                          ),
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.orange,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          deleteUser(1);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
