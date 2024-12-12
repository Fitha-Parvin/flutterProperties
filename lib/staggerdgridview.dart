import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home:Staggerdgridex() ,));
}
class Staggerdgridex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold( body:
   StaggeredGrid.count(crossAxisCount: 4,children: [
     StaggeredGridTile.count(
       crossAxisCellCount: 2,

       mainAxisCellCount: 2, child:
       Card(
         color: Colors.cyan,
       ),),
     StaggeredGridTile.count(
       crossAxisCellCount: 2,

       mainAxisCellCount: 1, child:
     Card(
       color: Colors.greenAccent,
     ),),
     StaggeredGridTile.count(
       crossAxisCellCount: 2,

       mainAxisCellCount: 2, child:
     Card(
       color: Colors.yellow,
     ),),
     StaggeredGridTile.count(
       crossAxisCellCount: 1,

       mainAxisCellCount: 1, child:
     Card(
       color: Colors.red,
     ),),
     StaggeredGridTile.count(
       crossAxisCellCount: 1,

       mainAxisCellCount: 2, child:
     Card(
       color: Colors.red,
     ),),
     StaggeredGridTile.count(
       crossAxisCellCount: 1,

       mainAxisCellCount: 1, child:
     Card(
       color: Colors.red,
     ),),




   ],),
 );
  }

}