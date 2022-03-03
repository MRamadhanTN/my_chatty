import 'package:flutter/material.dart';
import 'package:my_chatty/theme.dart';

void main() => runApp(MessagePage());

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      final imageUrl,
      final text,
      final time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ),
            SizedBox(width: 12),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: smokeColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: titleTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble({
      final imageUrl,
      final text,
      final time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: titleTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(width: 12),
            Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icon1.png',
              width: 55,
              height: 55,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fair',
                  style: titleTextStyle,
                ),
                Text(
                  '14,209 members',
                  style: subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: () {},
              mini: true,
              backgroundColor: greenColor,
              child: Icon(Icons.call),
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 30),
              receiverBubble(
                imageUrl: 'assets/images/human2.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/images/human4.png',
                text: 'Find here :P',
                time: '3:11',
              ),
              senderBubble(
                imageUrl: 'assets/images/profile_pic.png',
                text:
                    'Thinking about how to deal\nwith this client from hell..',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/images/human3.png',
                text: 'Love them',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            Text(
              'Type message ...',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
                color: Color(0xff999999),
              ),
            ),
            Image.asset(
              'assets/images/send_btn.png',
              width: 35,
              height: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: ghostColor,
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
