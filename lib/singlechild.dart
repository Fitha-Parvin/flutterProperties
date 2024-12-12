import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){runApp(MaterialApp(home:Singlechild() ,));}
class Singlechild extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("story"),
        
      ),
      body: Column(children: [
        Text("The King’s Painting"
        ,style: GoogleFonts.abrilFatface(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,)),
           SizedBox(height: 50,),
        const Expanded(child: SingleChildScrollView(
          child: Text("""There was a king with only one leg and one eye but was generous and competent as a ruler. One day while walking in his palace, the king noticed the portraits of his ancestors along the hallway. He also wanted his portrait painted by an artist 
              but was unsure how it would turn out due to his physical abnormalities. The King invited all the painters across the kingdoms and asked who could paint a beautiful picture of him. The paint were confused about how to make a beautiful picture of the King with only one leg
               and one eye.All the painters politely refused to make a painting of the King. 
               Then one young painter came forward and ensured to make a beautiful portrait of the King. After a few days, 
               the young painter unveiled the portrait in the court in which the King was seen sitting on the horse with
                one leg visible, holding his bow and aiming the arrow with one eye closed. There was no sign of physical 
                deficiencies in the king in the painting. The King was pleased to see that the painter had creatively
                 presented the King’s positive characteristics but not highlighted the abnormalities.""",style: TextStyle(fontSize:25 ),

            textAlign: TextAlign.justify,
          ),

        ))
      ],),
    );
  }
  
}
