// ignore_for_file: must_be_immutable

import 'package:demo/plandetails.dart';
import 'package:demo/widgets/textoutline.dart';
import 'package:flutter/material.dart';
import 'package:demo/data/dummy_data.dart';

class CardLocalOutline extends StatelessWidget {
  CardLocalOutline({this.countries, this.text, super.key});

  final String? text;
  List<String>? countries;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //controller: ScrollController(keepScrollOffset: true),
        shrinkWrap: true,
        itemCount: countries!.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PlanDetails(
                    title: countries![i],
                  );
                }));
              },
              child: Card(
                elevation: 2,
                child: Row(
                  children: [
                    Image.network(
                      text == "local"
                          ? local_countries_images[i]
                          : regional_countries_images[i],
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Text(
                          text == "local" ? countries![i] : countries![i],
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextOutline(
                          text: "from \$ 16 USD per day",
                          fontsize: 12,
                          fontweight: FontWeight.normal,
                          color: Color(0x90000000),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
