import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab8_realtime_chat_app/models/userprofile.dart';

class ChatTile extends StatelessWidget {
  final UserProfile userProfile;
  final Function onTap;

  const ChatTile({
    super.key,
    required this.userProfile,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap();
      },
      dense: false,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          userProfile.dpUrl!,
        ),
      ),
      title: Text(userProfile.name!),
    );
  }
}
