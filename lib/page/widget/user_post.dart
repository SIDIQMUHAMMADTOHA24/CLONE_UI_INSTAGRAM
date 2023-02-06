import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          child: Row(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'rakyat_62+',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
              ),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        SizedBox(
            width: 400,
            height: 300,
            child: Image.network(
              'https://i.pinimg.com/564x/a3/73/90/a3739033521ac1d80747f652da833ecb.jpg',
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children:  [
              Icon(Icons.favorite_outline,size: 27,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 7),
                child: SvgPicture.asset('asset/icon/comment.svg'),
              ),
              SvgPicture.asset('asset/icon/send_post.svg'),
              Spacer(),
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
                '8.000 suka',
                style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'rakyat_62+',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                TextSpan(
                    text: ' Kapan lagi yakan kesini bareng keluarga',
                    style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.9)))
              ])),
              Text(
                'selengkapnya',
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13.5,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                'Lihat semua 74 comentar',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }
}
