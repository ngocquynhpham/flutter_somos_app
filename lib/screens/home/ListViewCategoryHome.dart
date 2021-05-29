import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:somos_app/screens/cobrar/CobrarScreen.dart';
import 'package:somos_app/screens/depositar/DepositarScreen.dart';
import 'package:somos_app/widget/buttons/ButtonCircleGradient.dart';

class ListViewCategoryHome extends StatefulWidget {
  final Map data;

  ListViewCategoryHome({
    Key key,
    this.data,
  });
  @override
  _ListViewCategoryHomeState createState() => _ListViewCategoryHomeState();
}

class _ListViewCategoryHomeState extends State<ListViewCategoryHome> {
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
                onPressed: () => {onDepositar()},
                child: Image.asset(
                  'lib/assets/icons/icon_money.png',
                  height: 40, //MediaQuery.of(context).size.height,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Deponsitar',
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
                  'lib/assets/icons/icon_dollar.png',
                  height: 40, //MediaQuery.of(context).size.height,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Transferie',
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
                  'lib/assets/icons/icon_pix.png',
                  height: 40, //MediaQuery.of(context).size.height,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pix',
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
                onPressed: () => {onCobrar()},
                width: 90,
                height: 90,
                child: Image.asset(
                  'lib/assets/icons/icon_cobrar.png',

                  height: 40, //MediaQuery.of(context).size.height,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Cobrar',
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
        ],
      ),
    );
  }

  void onDepositar() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DepositarScreen()));
    print('Screen DepositarScreen ');
  }

  void onCobrar() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CobrarScreen()));
    print('Screen Cobrar Screen ');
  }
}
