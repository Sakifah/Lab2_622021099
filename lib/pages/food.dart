

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Food App',
        ),
      ),
      body: ListView(
        children: [
          cover(),
          title(),
          subTitle(),
          card(),
          profile(),
          date(),
          talk(),
          subTitle(),
        ],
      ),
    );
  }

  Row talk() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
      Padding(
        padding: EdgeInsets.fromLTRB(0,0,10,0),
        child: FaIcon(
          FontAwesomeIcons.smile,
          size: 15,
        ),
        ),
      Text(
        'เกริ่นสักหน่อย',
        style: TextStyle(
          fontSize: 18,
        ),
      )
      ],
    );
  }

  Container card() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          color: Colors.deepOrangeAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              time(),
              utensils(),
              fire(),
              user(),
            ],
          ),
        ),
        ),
    );
  }

  Widget subTile2() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(30,2,30,20),
      child: Text(
        'ใครว่าทำเมนูล็อบสเตอร์นั้นไม่สามารถทำได้ที่บ้าน จิ๋วหิวโซคนนี้ขอคาน! เพราะวันนี้จะมาชวนเพื่อน ๆ เข้าครัวทำเมนู “ล็อบสเตอร์อบชีส” ที่บ้านกันแบบง่าย ๆ และไม่ต้องเตรียมล็อบสเตอร์ให้วุ่นวาย ส่วนซอสก็สามารถทำได้ไม่ยาก งานนี้รับรองว่าเด็ดไม่แพ้ร้านเลยล่ะจ้า '
      ),
      );
  }

  Widget user() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.user,
              color: Colors.green,
            ),
            Text(
              'สำหรับ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              '5 เสิร์ฟ ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            )
          ],
          )
        ),
        );
  }

  Widget fire() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.gripfire,
              color: Colors.red,
            ),
            Text(
              'แคลอรี่',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              '300 Kcal/เสิร์ฟ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            )
          ],
          )
        ),
        );
  }

  Widget utensils() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.utensils,
              color: Colors.yellow,
            ),
            Text(
              'เวลาปรุง',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              '50 นาที',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            )
          ],
          )
        ),
        );
  }

  Widget time() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.stopwatch,
              color: Colors.blue,
            ),
            Text(
              'เวลาเตรียม',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              '10 นาที',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            )
          ],
          )
        ),
        );
  }

  Widget date() {
    return Padding(
      padding : const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'วันที่ 17 ธ.ค. 2564  โดย เชฟฟะห์',
            style: TextStyle(
              fontSize: 14,
            ),
          )
        ],
      ), 
      );
  }

  Widget profile() {
    return const CircleAvatar(
      radius: 60,
      backgroundColor: Colors.red,
      child: CircleAvatar(
        radius: 55,
        backgroundImage: NetworkImage(
          'https://scontent.fbkk3-1.fna.fbcdn.net/v/t1.6435-9/120797688_2699855406902951_6992405853317766406_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGdkXMWWn4KG9Cj6m5BmTOse5eQthNBbYB7l5C2E0FtgA3S2zVQe1GmzPmKv_aqFC3j9IDVNsQdfWT4z1T64bpW&_nc_ohc=bGyv2N9jIk0AX88jU8h&tn=lckcYQCYWJJEjb2s&_nc_ht=scontent.fbkk3-1.fna&oh=00_AT-WUQoXUG3QYPmWLjs6XjEb-Fk2BPRalxkR-ojdpLTLBw&oe=61E0400E'
        ),
      ),
    );
  }

  Widget subTitle() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(30,2 ,30 ,5 ),
      child: Text(
        'เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้นและชีสเน้น ๆ กับเมนู “ล็อบสเตอร์อบชีส” ที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก พร้อมแล้วตามมาเข้าครัวกันเลย! '
      ),
      );
  }

  Widget title() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(30, 20,30, 2),
      child: Text(
        'วิธีทำ “ล็อบสเตอร์อบชีส” เมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      );
  }

  SizedBox cover() {
    return SizedBox(
          width: 150,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit : BoxFit.fill,
                image: new AssetImage('images/1.jpg')
                )
            ),
          ),
        );
  }
}