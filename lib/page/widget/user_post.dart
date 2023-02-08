import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/data/data.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.welcome});
  final Welcome welcome;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 19, (context, index) {
      var data = welcome.hits![index];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  data.user,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 13),
                ),
                const Spacer(),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          SizedBox(
              width: 400,
              height: 300,
              child: Image.network(
                (index == 15)
                    ? 'https://avatars.githubusercontent.com/u/119821427?v=4'
                    : data.userImageUrl,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite_outline,
                  size: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: SvgPicture.asset('asset/icon/comment.svg'),
                ),
                SvgPicture.asset('asset/icon/send_post.svg'),
                const Spacer(),
                SvgPicture.asset('asset/icon/save.svg')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${data.likes} suka',
                  style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: data.user,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  TextSpan(
                      text: ' Kapan lagi yakan kesini bareng keluarga',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.9)))
                ])),
                const Text(
                  'selengkapnya',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  'Lihat semua ${data.comments} comentar',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      );
    }));
  }
}
