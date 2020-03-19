import 'package:fl_boilerplate/components/button_custom.dart';
import 'package:fl_boilerplate/components/cgv_appbar.dart';
import 'package:fl_boilerplate/utilities/constants.dart';
import 'package:flutter/material.dart';

enum UserAgreement {
  YES,
  NO,
}

UserAgreement _agreement = UserAgreement.YES;

class FreeMemberRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBodyColor,
      appBar: CGVAppBar(),
      body: Container(
        margin: EdgeInsets.all(kBodyMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '註冊免費會員',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                Text(
                  '已經是會員？按此登入。',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Container(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 44.0,
                  width: 100.0,
                  color: Colors.black.withOpacity(0.1),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text('稱謂*'),
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.normal,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: kRedColor,
                    ),
                    iconSize: 24,
                    elevation: 16,
                    underline: Container(),
                    onChanged: (String newValue) {},
                    items: <String>[
                      '稱謂*',
                      'Mr.',
                      'Mrs.',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    height: 44.0,
                    color: kWhiteColor,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '名*',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 10.0,
            ),
            Container(
              height: 44.0,
              color: kWhiteColor,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '姓*',
                ),
              ),
            ),
            Container(
              height: 10.0,
            ),
            Container(
              height: 44.0,
              color: kWhiteColor,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '電郵地址*',
                ),
              ),
            ),
            Container(
              height: 10.0,
            ),
            Container(
              height: 44.0,
              color: kWhiteColor,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '密碼*',
                ),
              ),
            ),
            Container(
              height: 10.0,
            ),
            Container(
              height: 44.0,
              color: kWhiteColor,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '確認密碼*',
                ),
              ),
            ),
            Container(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 11.0,
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 22.0,
                      height: 22.0,
                      child: Image.asset('assets/img/checked.png'),
                    ),
                    Container(
                      width: 10.0,
                    ),
                    Text(
                      '我願意接收CGV的最新優惠與活動資訊。',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 11.0,
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 22.0,
                      height: 22.0,
                      child: Image.asset('assets/img/check_circle.png'),
                    ),
                    Container(
                      width: 10.0,
                    ),
                    Text(
                      '我同意接受CGV之條款與細則。',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 50.0,
            ),
            ButtonCustom(
              onPressed: () {},
              text: "註冊",
              fillColor: kLightGreyColor,
              borderColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
