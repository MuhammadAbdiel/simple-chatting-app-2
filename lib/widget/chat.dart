import 'package:flutter/material.dart';
import 'package:flutter_chatty_2/theme.dart';

class Chat extends StatelessWidget {
  final String image;
  final String message;
  final String time;

  const Chat({Key? key, this.image = '', this.message = '', this.time = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 45,
            height: 45,
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: lightGreyColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: subTitleUnread,
                ),
                Text(
                  time,
                  style: subTitle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
