import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  final String name;
  final String time;
  final String img;


  PostItem({
    Key key,
    @required this.name,
    @required this.time,
    @required this.img
  }) : super(key: key);
  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: new Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),

              contentPadding: EdgeInsets.all(0),
              title: Text(
                "${widget.name}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                "${widget.time}",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 11,
                ),
              ),
            ),

            Image.asset(
              "image/car.jpg",
              height: 170,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),

            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                 InkWell(
                    onTap: (){
                      debugPrint("Like");
                    },
                    child: Text("like",style:TextStyle(color: Colors.blue),),

                ),
                 SizedBox(width: 20.0,),
                 InkWell(
                      onTap: (){
                        debugPrint("dislike");
                      },
                      child: Text("Dislike",style:TextStyle(color: Colors.blue),),

                ),
                SizedBox(width: 20.0,),
                InkWell(
                      onTap: (){
                        debugPrint("share");
                      },
                      child: Text("share",style: TextStyle(color: Colors.blue),),

                )
              ],
            )

          ],
        ),
        onTap: (){},
      ),
    );
  }
}