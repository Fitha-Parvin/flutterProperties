import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Bottamshett(),
  debugShowCheckedModeBanner: false,)
  );
}
class  Bottamshett extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("Bootam Shett",),
      actions: [
       PopupMenuButton(itemBuilder: (context){
       return [
         PopupMenuItem(child: Text("Invite")),
         PopupMenuItem(child: Text("New Group")),
         PopupMenuItem(child: Text("New Broadcast")),
         PopupMenuItem(child: Text("Logout")),
       ];
       })
      ],
    ),
    body: Container(
      child: Center(
        child: GestureDetector(

          onTap: ()=>show(context),
          child: Text("bottam sheet"),
        ),
      ),
    ),
  );
  }

  show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return ListView(children: [
         ListTile(
           leading: Icon(Icons.share),
           title: Text("share"),
         ),
        ListTile(
          leading: Icon(Icons.facebook),
          title: Text("facebook"),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.whatsapp),
          title: Text("whatsapp"),
        )

      ],);
    });

  }

}