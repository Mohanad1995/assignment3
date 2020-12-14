import 'package:assignment3/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Assign3 extends StatefulWidget {
  @override
  _Assign3State createState() => _Assign3State();
}
class _Assign3State extends State<Assign3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
          leading:Padding(
            padding: const EdgeInsets.only(right:40.0),
            child: Center(child: Text('STYLISH')),
          ),
        trailing: Transform.translate(
          offset: Offset(15,0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: (){},
              icon:Icon(Icons.shopping_cart),
            ),
            IconButton(
              onPressed: (){},
              icon:Icon(Icons.menu),
            ),
          ],
          ),
        ),
      ),
      body:ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 32,left: 18,right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/img/1.jpg'),
                        ),
                      ),
// SizedBox(width: 42,),
                      Column(
                        children: [
                          Text('1290',style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
// color: Colors.black26,
                          ),),
                          Text('posts',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black26,
                          ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('4m',style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
// color: Colors.black26,
                          ),),

                          Text('followers',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black26,
                          ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('256',style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
// color: Colors.black26,
                          ),),

                          Text('fllowing',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black26,
                          ),),
                        ],
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(120,-70),
                  child: Container(
                    width: 260,
                    height: 50,
                    child:  _rasiedButton(context),
                  ),
                ),
                Transform.translate(
                  offset: Offset(18,-72),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Home Furniture',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.7),
                      ),),
                      SizedBox(height: 4,),
                      Text('Home access , some information about',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),),
                      SizedBox(height: 8,),
                      Text('Contact Us:',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(.8),
                      ),),
                      SizedBox(height: 2,),
                      Text('+925 987 592 2365',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade700
                      ),),
                      SizedBox(height: 6,),
                      Text('Chennai,India',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(.4),
                      ),),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right:32.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 118,
                              height: 43,
                              child:  _rasiedButton1(context,'Add Product'),
                            ),
                            Container(
                              width: 118,
                              height: 43,
                              child:  _rasiedButton1(context,'Share'),
                            ),
                            Container(
                              width: 118,
                              height: 43,
                              child:   _rasiedButton1(context,'Contact Us'),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height:2 ),
                      _devided(context),
                      Container(
                        width: double.infinity,
                        height: 500,
                        child: _photos(context),
                      ),

                   ],
                  ),
                ),

              ],
            ),

          ),

        ],
      ),
    );
  }
  _devided(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10),
      child: Container(
        color: Colors.grey.shade300,
        height: 1,
      ),
    );
  }
  _rasiedButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:0,left: 32),
      child: RaisedButton(
        onPressed: (){},
        color: Colors.grey.shade300,
        elevation: 0,
        child: Text('Edit Profile',style: TextStyle(
            letterSpacing: 1,
                fontSize: 20,
          color: Colors.black87,
        ),),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          //  side: BorderSide(color: Colors.grey,width: 2)
        ),
      ),
    );
  }
  _rasiedButton1(BuildContext context,String value) {
    return RaisedButton(
      onPressed: (){},
      color: Colors.grey.shade200,
      elevation: 0,
      child: Text('$value',style: TextStyle(
    //    letterSpacing: 1,
     //  fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
       //   side: BorderSide(color: Colors.grey,width: 2)
      ),
    );
  }

  _photos(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 32),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        scrollDirection: Axis.vertical,
        children:Provider.photos().map((photo){
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(photo),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),

            ),
          );
        }).toList(),
      ),
    );
  }

}
