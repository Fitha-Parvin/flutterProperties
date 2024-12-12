import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Datatableeg(),));
}
class Datatableeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child:   DataTable(
    border: TableBorder.all(
    width: 5.0,

      color: Colors.yellow,

    ),
    columns: const [
      DataColumn(label: Text("name"
        ,style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),)),
      DataColumn(label: Text("age"
        ,style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),)),
      DataColumn(label: Text("job"
        ,style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),)),


      DataColumn(label: Text("salery",
        style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),)),


    ],


    rows: const [
      DataRow(cells:
      [
        DataCell(Text("anu")),
        DataCell(Text("25"))  ,
        DataCell(Text("Teacher"))  ,
        DataCell(Text("25000"))

      ]),
      DataRow(cells:
      [
        DataCell(Text("manu")),
        DataCell(Text("30"))  ,
        DataCell(Text("IT"))  ,
        DataCell(Text("35000"))


      ]),
      DataRow(cells:
      [
        DataCell(Text("arjun")),
        DataCell(Text("30"))  ,
        DataCell(Text("Doctor"))  ,
        DataCell(Text("20000"))




      ]),

    ],),
    ),
  );
  }

}