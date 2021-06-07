
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key key, this.title}) : super(key: key);

  final String title;
 

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {


Widget Tablerow(col1,col2,col3,Color colo){
return Container(width: MediaQuery.of(context).size.width/1.2,
child:Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Container(
  width:MediaQuery.of(context).size.width/5,
  child:Text(col1, textAlign: TextAlign.left, style: TextStyle(
        color: Colors.white54,
        fontFamily: 'IBM Plex Sans',
        fontSize: 14,
        fontWeight: FontWeight.w300,
        height: 1
      ),
      overflow: TextOverflow.clip,
      ),
  ),
 
 Container(
  width:MediaQuery.of(context).size.width/5,
  child:Text(col2, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.8700000047683716),
        fontFamily: 'IBM Plex Sans',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        height: 1
      ),),),
 Container(
  width:MediaQuery.of(context).size.width/5,
  child:Text(col3, textAlign: TextAlign.left, style: TextStyle(
        color:colo,
        fontFamily: 'IBM Plex Sans',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        height: 1
      ),)),


],)

);
}
Widget Tablehead(col1,col2,col3){
return Center(child: Container(width: MediaQuery.of(context).size.width/1.1,
         height: 28,
         color: Color(0XFF121212),
        child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
       Padding(
          padding:EdgeInsets.only(left:30),
         child:Text(col1, textAlign: TextAlign.left, style: TextStyle(
        color: Colors.white54,
        fontFamily: 'IBM Plex Sans',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 1
      ),),),
           
        
          Text(col2, textAlign: TextAlign.left, style: TextStyle(
        color: Colors.white54,
        fontFamily: 'IBM Plex Sans',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 1
      ),),

        Padding( 
          padding:EdgeInsets.only(right:30),

         child:Text(col3, textAlign: TextAlign.left, style: TextStyle(
        color: Colors.white54,
        fontFamily: 'IBM Plex Sans',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 1
      ),),),
        
         ],
          ),
          
          ),);
}
Widget Moving_Averages_Table(){
  return Column(children: [
       
        Tablehead("Period","Value","Type"),
     
        Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("MA10","465.28","SELL",Color(0XFFFF2E50))),
                Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("MA20","465.28","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("MA30","465.28","BUY",Color(0XFF007AFF))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("MA50","465.28","BUY",Color(0XFF007AFF))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("MA100","465.28","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("MA200","465.28","BUY",Color(0XFF007AFF))),
        
  ],);
}
Widget Oscillator_Table(){
 return Column(children: [
        
        Tablehead("Name","Value","Action"),
     
        Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("RSI(14)","-53.6549","NEUTRAL",Color(0XFFFFB946))),
              Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("CSI(20)","-53.6549","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("ADI(14)","-53.6549","BUY",Color(0XFF007AFF))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("Awesome Oscillator","-53.6549","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("Momentum(10)","-53.6549","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("Stochastic RSI Fast(3,3,14,14)","-53.6549","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("Williams % R (14)","-53.6549","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("Bull Bear Power","-53.6549","SELL",Color(0XFFFF2E50))),
                  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("Ultimate Oscillator(7,14,28)","-53.6549","LESS VOLATILE",Colors.white54)),
 ],
 );
 }
Widget Table_Details(buy,neutral,sell){
  return Container(width: MediaQuery.of(context).size.width/1.1,
child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    
        Expanded(
        child:ListTile(
        title: Text(buy, textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.8700000047683716),
        fontFamily: 'IBM Plex Sans',
        fontSize: 18,
        fontWeight: FontWeight.normal,
        height: 1
      ),
        ),
     subtitle: Text("BUY", textAlign: TextAlign.center, style: TextStyle(
        color: Colors.white54,
        fontFamily: 'IBM Plex Sans',
        fontSize: 12,
        fontWeight: FontWeight.w300,
        height: 1
      ),
        ),
      ),
        ),
             
            Expanded(
             child: ListTile(
        title: Text(neutral, textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.8700000047683716),
        fontFamily: 'IBM Plex Sans',
        fontSize: 18,
        fontWeight: FontWeight.normal,
        height: 1
      ),
        ),
     subtitle: Text("NEUTRAL", textAlign: TextAlign.center, style: TextStyle(
        color: Colors.white54,
        fontFamily: 'IBM Plex Sans',
        fontSize: 12,
        fontWeight: FontWeight.w300,
        height: 1
      ),
        ),
      ),
            ),

        Expanded(
        child:ListTile(
        title: Text(sell, textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.8700000047683716),
        fontFamily: 'IBM Plex Sans',
        fontSize: 18,
        fontWeight: FontWeight.normal,
        height: 1
      ),
        ),
     subtitle: Text("SELL", textAlign: TextAlign.center, style: TextStyle(
        color: Colors.white54,
        fontFamily: 'IBM Plex Sans',
        fontSize: 12,
        fontWeight: FontWeight.w300,
        height: 1
      ),
        ),
      ),
        ),
    
  ],));
}
Widget DropDown(width,content){
  return Center(
    child:Container(
           width: width,
           height:50,
           color: Color(0XFF121212),
           child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
           Padding(
               padding: EdgeInsets.only(left:20),
               child:Text(content,style: TextStyle(color:Color(0XFFCFCFCF),fontFamily: "IBM Plex Sans",fontSize: 14),),
           ),
            IconButton(
          icon: Icon(Icons.keyboard_arrow_down, color:Color(0XFFCFCFCF),),
        ),
          ],
           )
          
          ));
} 
Widget Button(content,bordercolor,backgroundcolor,FontWeight fontweight,size){
  return OutlinedButton(onPressed: null, 
  child:Text(content,style:
  TextStyle(color:bordercolor,fontWeight:fontweight),),
  style:OutlinedButton.styleFrom(
   side: BorderSide(color:bordercolor,width:1),
   backgroundColor: backgroundcolor,
   minimumSize: size,
  ),
  );
  
}
Widget PivotPoint_Table(){
  return Column(children: [
  Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("S3","","456.87",Colors.white)),
          Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("S2","","456.87",Colors.white)),
          Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("S1","","456.87",Colors.white)),
          Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("Pivot Points","","456.87",Colors.white)),
          Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("R1","","456.87",Colors.white)),
          Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("R2","","456.87",Colors.white)),
          Padding(
          padding: EdgeInsets.only(top:30),
          child:Tablerow("R3","","456.87",Colors.white)),



  ],);
}
Widget TimeLine(){
  return Column(
children: [
  Container(
    width:MediaQuery.of(context).size.width/10,
    height:MediaQuery.of(context).size.height/5,
    color:Colors.yellow,
  ),
   Container(
    width:MediaQuery.of(context).size.width/10,
    height:MediaQuery.of(context).size.height/5,
    color:Colors.red,
  ),
 Container(
    width:MediaQuery.of(context).size.width/10,
    height:MediaQuery.of(context).size.height/5,
    color:Colors.blue,
  )
],
  );
}
  
  @override
  Widget build(BuildContext context) {
 
     var width=MediaQuery.of(context).size.width;
     var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
      
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
        title: Text(widget.title,
        style:TextStyle(fontFamily: "IBM Plex Sans",fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.black,

      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
      color:Colors.black,
      child:ListView(
        children: [
          //Drop down technical indicators
         DropDown(width/1.1,"Technical Indicators"),
        
        SizedBox(height:20),
       
   
        //Summary
        Center(child: Text("Summary",style: TextStyle(color:Color(0XFFCFCFCF),fontFamily: "IBM Plex Sans",fontSize: 16),),),
        
        //Neutral Section
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Diagram
           
              Row(
              children:[
                SvgPicture.asset("assets/svgs/indicatorBar.svg"),
                Stack(
                  children:[
                    SvgPicture.asset("assets/svgs/pointer.svg"),
                    Padding(
                      padding: EdgeInsets.only(left:20,top:5),
                      child:Text("NEUTRAL"),
                    ),
                  ]
                ),
                
              ],
              ),
            
           
           
            //Time buttons
            Column(
              // height:MediaQuery.of(context).size.height/2,
              children: [
                //time buttons
               Button("1 MIN", Colors.white,Colors.black,FontWeight.w300,Size(40,30)),
               Button("5 MIN", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
               Button("15 MIN", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
               Button("30 MIN", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
               Button("1 HR", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
               Button("5 HR", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
               Button("1 DAY", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
               Button("1 WK", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
               Button("1 MON", Colors.white38,Colors.black,FontWeight.w300,Size(40,30)),
              

            ],)
          ],
        ),
        
        SizedBox(height:60),
        
        //Moving Averages
        Center(child: Text("Moving Averages",style: TextStyle(color:Color(0XFFCFCFCF),fontFamily: "IBM Plex Sans",fontSize: 16),),),
        SizedBox(height:30),
      
        Center(child: Container(
          width:width/4,
          height:30,
          decoration: BoxDecoration(color: Color(0XFF007AFF),
          borderRadius: BorderRadius.all(Radius.circular(10))),
          child: FlatButton(onPressed: null, child: Text("BUY",
        style: TextStyle(color: Colors.white,)),
        ),
        ),),
      
        
        SizedBox(height:30),
        Table_Details("7","-","5"),
        SizedBox(height:30),
        DropDown(width/1.9,"Exponential"),
        SizedBox(height:30),
        Moving_Averages_Table(),
        SizedBox(height:30),
        SizedBox(height:30),


        //Oscillator Table
        Center(child: Text("Oscillators",style: TextStyle(color:Color(0XFFCFCFCF),fontFamily: "IBM Plex Sans",fontSize: 16),),),
        SizedBox(height:30),
      
        Center(child: Container(
          width:width/3,
          height:30,
          decoration: BoxDecoration(color: Color(0XFFFF2E50),
          borderRadius: BorderRadius.all(Radius.circular(10))),
          child: FlatButton(onPressed: null, child: Text("Strong Sell",
        style: TextStyle(color: Colors.white,)),
        ),
        ),),
        SizedBox(height:30),
        Table_Details("1","1","9"),
         SizedBox(height:30),
        Oscillator_Table(),
         SizedBox(height:30),
         SizedBox(height:30),

         //Pivot point Table
        Center(child: Text("Pivot Points",style: TextStyle(color:Color(0XFFCFCFCF),fontFamily: "IBM Plex Sans",fontSize: 16),),),
        SizedBox(height:30),
        DropDown(width/2.8, "Classic"),
         SizedBox(height:30),

        PivotPoint_Table(),
SizedBox(height:60),
    
        ],
        )
      ),
     
       
    );
  }
}

