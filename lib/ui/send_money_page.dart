import 'package:flutter/material.dart';

class SendMoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle sectionTextStyle = TextStyle(
      color: Color(0xff757F8C),
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    );

    return DefaultTabController(
        length: 2,
        child: Column(children: [
          TabBar(
            tabs: [
              Tab(text: 'Card'),
              Tab(
                text: 'Bank',
              )
            ],
            labelColor: Color(0xff3B414B),
            labelStyle: TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelColor: Color(0xffA6AAB4),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            indicator: UnderlineTabIndicator(
              borderSide:
                  BorderSide(color: Theme.of(context).accentColor, width: 2.0),
              insets: EdgeInsets.symmetric(horizontal: 33.0),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 24.0,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Select credit card',
                                    style: sectionTextStyle)),
                            SizedBox(
                              height: 12.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (_, __) {
                            return Row(
                              children: [
                                SizedBox(
                                  width: 16.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Theme.of(context).primaryColor),
                                  width: 144,
                                  height: 120,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'VISA',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Text(
                                          '**** 3489',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              letterSpacing: 6),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '\$ 1,345.56',
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 42.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Beneficiaries', style: sectionTextStyle),
                                Text('Show all',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32.0,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Transaction details',
                                    style: sectionTextStyle)),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Amount',
                                  border: OutlineInputBorder(),
                                  prefixText: '\$',
                                  suffixText: 'change currency',
                                  suffixStyle: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0)),
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Description (optional)',
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            FractionallySizedBox(
                              widthFactor: 1.0,
                              child: RaisedButton(
                                color: Theme.of(context).primaryColor,
                                onPressed: () {},
                                textColor: Colors.white,
                                child: Text('Confirm'),
                                padding: EdgeInsets.all(14.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(child: Text('Bank')),
              ],
            ),
          ),
        ]));
  }
}
