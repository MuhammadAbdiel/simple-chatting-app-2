import 'package:flutter/material.dart';
import 'package:flutter_chatty_2/theme.dart';
import 'package:flutter_chatty_2/widget/chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: veryLightGreyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/img1.png',
                      width: 55,
                      height: 55,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jakarta Fair',
                          style: title,
                        ),
                        Text(
                          '14.209 members',
                          style: subTitle,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/phone.png',
                      width: 35,
                      height: 35,
                    ),
                  ],
                ),
              ),
              const Chat(
                image: 'assets/images/g1.png',
                message: 'How are ya guys?',
                time: '2:30',
              ),
              const Chat(
                image: 'assets/images/g3.png',
                message: 'Find here :P',
                time: '3:11',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 250,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Thinking about how to deal with this client from hell...',
                            style: subTitleUnread,
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            '22:08',
                            style: subTitle,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Image.asset(
                      'assets/images/g4.png',
                      width: 45,
                      height: 45,
                    ),
                  ],
                ),
              ),
              const Chat(
                image: 'assets/images/g2.png',
                message: 'Love them',
                time: '23:11',
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: 350,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Type message...',
                          style: subTitle,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: lightGreyColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/send.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
