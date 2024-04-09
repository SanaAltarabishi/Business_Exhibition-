import 'package:flutter/material.dart';
import 'package:works_app/cardModel.dart';
import 'package:works_app/details.dart';

class buildDataContaine extends StatelessWidget {
  final CardModel model;
  buildDataContaine({
    Key? key,
    required this.model,
  }) : super(key: key);
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // setState(() {
          // isTurn = !isTurn;
          // });
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    PageView.builder(
                  itemCount: model.name.length,
                  itemBuilder: (context, index) => DetailsPage(
                    model: model,
                  ),
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
              ));
        },
        child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            height: 130,
            decoration: BoxDecoration(
              color: model.color,
              border: const Border.symmetric(
                  horizontal: BorderSide(color: Color.fromARGB(65, 0, 0, 0))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  width: 85,
                  height: 85,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(255, 243, 225, 206), BlendMode.modulate),
                    child: Image.asset(
                      model.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )));
  }
}
