import 'package:flutter/material.dart';

class GuessYouLikePage extends StatefulWidget {
  @override
  _GuessYouLikePageState createState() => _GuessYouLikePageState();
}

class _GuessYouLikePageState extends State<GuessYouLikePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 15),
        getFoodItem(
          'Chicken Chow Mein',
          'assets/images/food1.jpg',
          'Chicken fried noodles is a delicious home-cooked dish made from chicken, fragrance and taste.',
          123,
          23,
          23,
          5,
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.only(left: 125),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 15),
        getFoodItem(
          'Beef vermicelli soup',
          'assets/images/food2.jpeg',
          'Beef vermicelli soup is a delicacy made of beef and vermicelli. It has rich nutrition and attractive color.',
          123,
          23,
          23,
          4,
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.only(left: 125),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 15),
        getFoodItem(
          'Chicken Chow Mein',
          'assets/images/food3.jpg',
          'Chicken fried noodles is a delicious home-cooked dish made from chicken, fragrance and taste.',
          143,
          29,
          25,
          3,
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.only(left: 125),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  getFoodItem(
    String dishName,
    String imgPath,
    String description,
    int calInfo,
    int distance,
    int cookingTime,
    int rating,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Row(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      dishName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Color(0xFFF76765),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  getRatedStar(rating, 1),
                  getRatedStar(rating, 2),
                  getRatedStar(rating, 3),
                  getRatedStar(rating, 4),
                  getRatedStar(rating, 5),
                  SizedBox(width: 7),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      color: Colors.yellow[800],
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'About dishes',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFC6CC40),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width - 130,
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(Icons.fastfood, color: Colors.grey),
                  Text(
                    '${calInfo.toString()}kcal',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 7),
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    '${distance.toString()}km',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 7),
                  Icon(Icons.timer, color: Colors.grey),
                  Text(
                    '${cookingTime.toString()}mins',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  getRatedStar(int rating, int index) {
    if (index <= rating) {
      return Icon(Icons.star, color: Colors.yellow[600]);
    } else {
      return Icon(Icons.star, color: Colors.grey);
    }
  }
}
