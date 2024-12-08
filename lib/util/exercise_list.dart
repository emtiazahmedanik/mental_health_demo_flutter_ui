import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercise_List extends StatelessWidget {
  const Exercise_List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,

                    ),
                    child: Icon(Icons.favorite,color: Colors.white,),
                  ),
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Speaking Skills",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
                    ),
                    Text(
                      "16 Exercise",
                      style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}