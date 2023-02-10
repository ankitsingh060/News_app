import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final String imgUrl;
  final String newsHead;
  final String newsDes;
  final String newsUrl;
   const NewsContainer({Key? key, required this.imgUrl,required this.newsHead,
   required this.newsDes, required this.newsUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: Column(
        children: [
          Image.network(imgUrl),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Center(child: Text(newsHead, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                SizedBox(height: 20,),
                Text(newsDes,style: TextStyle(fontSize: 16, fontWeight:FontWeight.w400)),

              ],
            ),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Read More")),
              ],
            ),
          ),
          SizedBox(height: 16,)
        ],
      ),
    );
  }
}
