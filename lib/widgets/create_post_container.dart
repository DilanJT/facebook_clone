import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key,@required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageURL: currentUser.imageUrl),
              const SizedBox(width: 8.0,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What\'s on your mind?",

                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,

          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () => print("Live"),
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text("Live", style: TextStyle(
                    color: Colors.black,
                  ),),
                ),
                const VerticalDivider(width: 8.0,),
                TextButton.icon(
                  onPressed: () => print("Photo"),
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text("Photo", style: TextStyle(
                    color: Colors.black,
                  ),),
                ),
                const VerticalDivider(width: 8.0,),
                TextButton.icon(
                  onPressed: () => print("Room"),
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  label: Text("Room", style: TextStyle(
                    color: Colors.black,
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
