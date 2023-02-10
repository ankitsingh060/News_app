import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/controller/fetchNews.dart';
import 'package:news_app/view/widget/newsContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        itemCount: 10,
          itemBuilder:(context,index){
            return const NewsContainer(imgUrl: "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=2000&q=60",
                newsHead:"Purpose of Education System",
                newsDes: "One of the main purposes of education is socialization and the development of social skills. It is a process where children learn to communicate with others, and understand the needs of others. "
                    "Children develop these skills from an early age, and additional training in school allows them to perfect the skills such as negotiation and collaborative problem solving, as well as to spend time with peers, learning to express their "
                    "attitudes while showing respect for the opinion of others. ",
                newsUrl: "https://www.allisonacademy.com/parents/child-development/what-is-the-purpose-of-education/#:~:text=One%20of%20the%20main%20purposes,understand%20the%20needs%20of%20others.");
          }
      ),
    );
  }
}
