import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:somos_app/widget/buttons/ButtonCircleGradient.dart';

class ListViewCategory extends StatefulWidget {
  final Map data;

  ListViewCategory({
    Key key,
    this.data,
  });
  @override
  _ListViewCategoryState createState() => _ListViewCategoryState();
}

class _ListViewCategoryState extends State<ListViewCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: GridView.count(
        physics: ClampingScrollPhysics(),
        // padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: 1,
        // crossAxisSpacing:0,
        // mainAxisSpacing:5,
        children: <Widget>[
          Column(
            children: [
              ButtonCircleGradient(
                width: 90,
                height: 90,
                child: Image.asset(
                  'lib/assets/icons/icon_barcode.png',
                  height: 40, //MediaQuery.of(context).size.height,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pagar',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              ButtonCircleGradient(
                width: 90,
                height: 90,
                child: Image.asset(
                  'lib/assets/icons/icon_credit_card.png',
                  height: 40, //MediaQuery.of(context).size.height,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Cartão',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              ButtonCircleGradient(
                width: 90,
                height: 90,
                child: Image.asset(
                  'lib/assets/icons/icon_qrcode.png',
                  height: 40, //MediaQuery.of(context).size.height,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'QRCode',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
