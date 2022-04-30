import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Readmore extends StatefulWidget {
  const Readmore({Key? key}) : super(key: key);

  @override
  State<Readmore> createState() => _ReadmoreState();
}

class _ReadmoreState extends State<Readmore> {
  final List<String> mglist = ['assets/123.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Readmore',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff111328),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Color(0xff111328),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      child: Builder(
                        builder: (context) {
                          final double height =
                              MediaQuery.of(context).size.height * 0.5;
                          return CarouselSlider(
                            options: CarouselOptions(
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              height: height,
                              viewportFraction: 1.0,
                              enlargeCenterPage: false,
                              // autoPlay: false,
                            ),
                            items: mglist
                                .map((item) => ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Center(
                                          child: Image.asset(
                                        item,
                                        fit: BoxFit.cover,
                                        height: height,
                                      )),
                                    ))
                                .toList(),
                          );
                        },
                      ),
                    ),
                    // Positioned(left:10,top: 10,child: Container(alignment: Alignment.centerLeft,child:Icon(Icons.arrow_back_sharp,size: 30,color: Colors.white,),))
                    Positioned(
                      bottom: 30,
                      left: 15,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ukraine and Russia war......",
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "25-sep-2022",
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: 30,
                      child: Container(
                        child: Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.thumb_up_alt_sharp,
                                color: Colors.red,
                                size: 30,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.red,
                                size: 30,
                              ),
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                    // Positioned(bottom: -10,child: Icon(Icons.notifications,size: 40,color: Colors.white,))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),

                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'T',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              color: Colors.white)),
                      TextSpan(
                        text:
                            "he Russo-Ukrainian War[20][e] is an ongoing war between Russia (together with pro-Russian separatist forces) and Ukraine.[f] It began in February 2014 following the Ukrainian Revolution of Dignity, and initially focused on the status of Crimea and parts of the Donbas, internationally recognised as part of Ukraine. The first eight years of the conflict included the Russian annexation of Crimea (2014) and the war in Donbas (2014–present) between Ukraine and Russian-backed separatists, as well as naval incidents, cyberwarfare, and political tensions. Following a Russian military build-up on the Russia–Ukraine border from late 2021, the conflict expanded significantly when Russia launched a full-scale invasion of Ukraine on 24 February 2022.Following the Euromaidan protests and a revolution resulting in the removal of pro-Russian President Viktor Yanukovych in February 2014, pro-Russian unrest erupted in parts of Ukraine. Russian soldiers without insignia took control of strategic positions and infrastructure in the Ukrainian territory of Crimea, and seized the Crimean Parliament. Russia organized a widely criticised referendum, whose outcome was for Crimea to join Russia. It then annexed Crimea. In April 2014, demonstrations by pro-Russian groups in the Donbas region of Ukraine escalated into a war between the Ukrainian military and Russian-backed separatists of the self-declared Donetsk and Luhansk republics.In August 2014, unmarked Russian military vehicles crossed the border[21] into the Donetsk republic. An undeclared war began between Ukrainian forces on one side, and separatists intermingled with Russian troops on the other, although Russia attempted to hide its involvement. The war settled into a static conflict, with repeated failed attempts at a ceasefire. In 2015, the Minsk II agreements were signed by Russia and Ukraine, but a number of disputes prevented them being fully implemented. By 2019, 7% of Ukraine was classified by the Ukrainian government as temporarily occupied territories, while the Russian government had indirectly acknowledged the presence of its troops in Ukraine.[citation needed]In 2021 and early 2022, there was a major Russian military build-up around Ukraine's borders. NATO accused Russia of planning an invasion, which it denied. Russian President Vladimir Putin criticized the enlargement of NATO as a threat to his country and demanded Ukraine be barred from ever joining the military alliance. He also expressed Russian irredentist views, questioned Ukraine's right to exist, and stated wrongfully that Ukraine was created by Soviet Russia. On 21 February 2022, Russia officially recognised the two self-proclaimed separatist states in the Donbas, and openly sent troops into the territories. Three days later, Russia invaded Ukraine. Much of the international community has condemned Russia for its actions in post-revolutionary Ukraine, accusing it of breaking international law and violating Ukrainian sovereignty. Many countries implemented economic sanctions against Russia, Russian individuals, or companies,[22] especially after the 2022 invasion.",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // child: Text(
                //   "The Russo-Ukrainian War[20][e] is an ongoing war between Russia (together with pro-Russian separatist forces) and Ukraine.[f] It began in February 2014 following the Ukrainian Revolution of Dignity, and initially focused on the status of Crimea and parts of the Donbas, internationally recognised as part of Ukraine. The first eight years of the conflict included the Russian annexation of Crimea (2014) and the war in Donbas (2014–present) between Ukraine and Russian-backed separatists, as well as naval incidents, cyberwarfare, and political tensions. Following a Russian military build-up on the Russia–Ukraine border from late 2021, the conflict expanded significantly when Russia launched a full-scale invasion of Ukraine on 24 February 2022.Following the Euromaidan protests and a revolution resulting in the removal of pro-Russian President Viktor Yanukovych in February 2014, pro-Russian unrest erupted in parts of Ukraine. Russian soldiers without insignia took control of strategic positions and infrastructure in the Ukrainian territory of Crimea, and seized the Crimean Parliament. Russia organized a widely criticised referendum, whose outcome was for Crimea to join Russia. It then annexed Crimea. In April 2014, demonstrations by pro-Russian groups in the Donbas region of Ukraine escalated into a war between the Ukrainian military and Russian-backed separatists of the self-declared Donetsk and Luhansk republics.In August 2014, unmarked Russian military vehicles crossed the border[21] into the Donetsk republic. An undeclared war began between Ukrainian forces on one side, and separatists intermingled with Russian troops on the other, although Russia attempted to hide its involvement. The war settled into a static conflict, with repeated failed attempts at a ceasefire. In 2015, the Minsk II agreements were signed by Russia and Ukraine, but a number of disputes prevented them being fully implemented. By 2019, 7% of Ukraine was classified by the Ukrainian government as temporarily occupied territories, while the Russian government had indirectly acknowledged the presence of its troops in Ukraine.[citation needed]In 2021 and early 2022, there was a major Russian military build-up around Ukraine's borders. NATO accused Russia of planning an invasion, which it denied. Russian President Vladimir Putin criticized the enlargement of NATO as a threat to his country and demanded Ukraine be barred from ever joining the military alliance. He also expressed Russian irredentist views, questioned Ukraine's right to exist, and stated wrongfully that Ukraine was created by Soviet Russia. On 21 February 2022, Russia officially recognised the two self-proclaimed separatist states in the Donbas, and openly sent troops into the territories. Three days later, Russia invaded Ukraine. Much of the international community has condemned Russia for its actions in post-revolutionary Ukraine, accusing it of breaking international law and violating Ukrainian sovereignty. Many countries implemented economic sanctions against Russia, Russian individuals, or companies,[22] especially after the 2022 invasion.",
                //   style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: ),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
