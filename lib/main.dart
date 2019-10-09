import 'package:flutter/material.dart';
import 'modal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monster',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: <Widget>[
          Image.network(
            'https://images.pexels.com/photos/460599/pexels-photo-460599.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, size: 20,),
                onPressed: () {},
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: ListView(
              children: <Widget>[
                SizedBox(height: 60,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Burgers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)
                    )
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '128 restaurants',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 16
                            )
                          ),
                          IconButton(
                            icon: Icon(Icons.sort),
                            iconSize: 18,
                            onPressed: () {},
                            color: Colors.red[800],
                            padding: EdgeInsets.zero,
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ItemList.itemData.length,
                          itemBuilder: (context, index) {
                            ItemList _list = ItemList.itemData[index];
                            return Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 1.0)
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://cdn.pixabay.com/photo/2019/10/02/14/09/jam-4521023__340.jpg',
                                          fit: BoxFit.fitHeight,
                                          width: 90.0,
                                          height: 90.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    _list.name,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w900,
                                                      fontSize: 18,
                                                      color: Colors.black
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.favorite_border,
                                                    size: 20,
                                                    color: Colors.black38
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 4,),
                                              Text(
                                                'Cafe - Western Food - \$4',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 16
                                                ),
                                              ),
                                              SizedBox(height: 4,),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.red[800],
                                                    size: 18
                                                  ),
                                                  SizedBox(width: 4,),
                                                  Text(
                                                    '4.9',
                                                    style: TextStyle(
                                                      color: Colors.red[800],
                                                      fontSize: 16
                                                    )
                                                  ),
                                                  SizedBox(width: 4,),
                                                  Text(
                                                    '(185 ratings)',
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 16
                                                    )
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 4,),
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: RawMaterialButton(
                                                  onPressed: () {},
                                                  child: Text('Offers'),
                                                  elevation: 0,
                                                  fillColor: Colors.red[800],
                                                  textStyle: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  constraints: BoxConstraints(
                                                    minHeight: 30,
                                                    minWidth: 70
                                                  ),
                                                  shape: StadiumBorder(),
                                                ),
                                              )
                                            ]
                                          )
                                        )
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12,)
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}


