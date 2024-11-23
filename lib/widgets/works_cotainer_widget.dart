import 'package:flutter/material.dart';
import 'package:futuresg10/models/popular_works_model.dart';

class WorksCotainerWidget extends StatelessWidget {
  PopularWorksModel popularWorksModel;
  BuildContext context;

  WorksCotainerWidget({
    required this.popularWorksModel,
    required this.context,
    // required this.screenHeigth,
    // required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: (screenWidth / 3) + 30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: (screenWidth / 3) + 30,
              height: screenWidth / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    popularWorksModel.urlImage,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Text(
              popularWorksModel.category,
              style: TextStyle(color: Colors.black38),
            ),
            Text(
              popularWorksModel.title,
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
