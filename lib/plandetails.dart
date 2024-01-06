import 'package:demo/slider_outline.dart';
import 'package:demo/widgets/container_outline.dart';
import 'package:demo/widgets/textoutline.dart';
import 'package:flutter/material.dart';

class PlanDetails extends StatelessWidget {
  const PlanDetails({this.title, super.key});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: TextOutline(
            text: title,
            color: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const TextOutline(
              text: "customize your plan",
              fontsize: 23,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextOutline(
              text: 'Data(Gb)',
              fontsize: 20,
              color: Colors.black,
            ),
            SliderOutline(
              val: 1,
              min: 1,
              max: 20,
            ),
            const TextOutline(
              text: 'Voice(SMS)',
              fontsize: 20,
              color: Colors.black,
            ),
            SliderOutline(
              val: 50,
              min: 50,
              max: 150,
            ),
            const TextOutline(
              text: 'SMS(SMS)',
              fontsize: 20,
              color: Colors.black,
            ),
            SliderOutline(
              val: 25,
              min: 25,
              max: 150,
            ),
            const TextOutline(
              text: 'Validity(days)',
              fontsize: 20,
              color: Colors.black,
            ),
            SliderOutline(
              val: 7,
              min: 7,
              max: 21,
            ),
            const SizedBox(
              height: 25,
            ),
            ContainerOutline(
              color: Colors.black,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextOutline(
                          text: "India Explorer Pack",
                          color: Colors.white,
                          fontsize: 20,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 20, 0),
                        child: Icon(
                          Icons.sim_card,
                          color: Colors.yellow,
                          size: 50,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextOutline(
                      text: "Your plan expires on Nov 14 7:00 PM",
                      fontsize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  /*  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                          constraints: const BoxConstraints(),
                          fillColor: Colors.white),
                    ),
                  ), 
                  */

                  Padding(
                    padding: const EdgeInsets.fromLTRB(100.0, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Buy Now - 16 \$ USD"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
