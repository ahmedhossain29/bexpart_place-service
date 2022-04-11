import 'package:flutter/material.dart';



class buildNearbyButton extends StatelessWidget {
  final String title;

  final String bannerimg;
  
  const buildNearbyButton({
    Key? key,
    required this.title,
    required this.bannerimg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 252,
          width: 227,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xffF1F1F5),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                width: 227,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    child: Image.asset(
                      bannerimg,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xff171725)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Bordeaux, france",
                  style: TextStyle(
                    color: Color(0xff696974),
                    fontSize: 14,
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: SizedBox(
                  width: 207,
                  height: 38,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF1F1F5),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(
                        color: Color(0xff696974),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
