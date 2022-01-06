import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:hotelapp/home/home_page.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyUI(),
      bottomNavigationBar: bottomUI(),
    );
  }

  ClipRRect bottomUI() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        backgroundColor: Color(
          0xFF53599A,
        ),
        elevation: 5.0,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.delete,
              size: 40.0,
            ),
            title: new Text('Xóa'),
          ),

          BottomNavigationBarItem(
            icon: new Icon(
              Icons.add,
              size: 40.0,
            ),
            title: new Text('Thêm'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.edit,
              size: 40.0,
            ),
            title: new Text(
              'Sửa',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }

  ListView bodyUI() {
    return ListView.builder(
      itemBuilder: (context, index) => Column(
        children: [
          b1(),
          b2(),
          b3(),
          b4(),
          b5(),
        ],
      ),
    );
  }

  Container b5() {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Text(
        '''Lunar New Year Festival often falls between late January and early February; it is among the most important holidays in Vietnam.
Tet Holiday gets its beginning marked with the first day in the Lunar Year; however, its preparation starts long before that. The 23rd day of the last Lunar month is East Day—a ritual worshiping Kitchen Gods (Tao Cong). It thought that each year on this day, these Gods go to heaven to tell Jade Emperor about all activities of households on earth.
On New Year’s Eve, they return home to continue their duties as taking care of families.
Most of my friends like to stay inside to play video games, read books or watch TV, but I have a good hobby of going outside and playing sports. I play many different sports in my free time; some of them are soccer, swimming, volleyball and basketball. Sometimes I also ride the bikes or do board skating with my cousin in the park. In my opinion, doing sport is one of the rare hobbies that actually have good impacts on me. I am taller than most of my classmates thanks to swimming and basketball lessons that I take during summer time. 
 My muscles are even stronger than my older brother, and I can last longer than most other people in any sport competition. Sports bring me a lot of benefits, and they are also fun things to do at the same time. I love the feeling of the cool water run through my face when I am swimming, and it seems like I am flying whenever I take a dive underwater.
On New Year’s Day, the first ones who come to visit households—called first-foot—are very important and hence need to be well chosen, as they believed to hold in their hands the entire luck of the family in New Year (Tan Nien). After that, till the third day or even the fourth day of Tet, individuals meet relatives, friends, and colleagues, wishing them all kinds of good things like happiness, health, and success.''',
        softWrap: true,
        style: GoogleFonts.montserrat(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),
      ),
    );
  }

  Container b4() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Phòng thường",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70.0),
                child: Text(
                  "Trống",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Text(
              "10.000.000VND",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "",
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  Container b3() {
    return Container(
      height: 60.0,
      width: 500.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Opacity(
            opacity: 0.99,
            child: Container(
              height: 70.0,
              width: 140.0,
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Wifi"),
                    Icon(Icons.wifi),
                  ],
                ),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container b2() {
    return Container(
      height: 400.0,
      width: 350.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Opacity(
            opacity: 0.99,
            child: Container(
              height: 400.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(
                    "assets/images/hotel4.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Chip(
                        label: new Text("Phòng khách"),
                        backgroundColor: Colors.white70,
                      ),
                    ]),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container b1() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20.0,
            ),
          )
        ],
      ),
    );
  }
}