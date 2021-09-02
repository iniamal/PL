import 'package:dagsap3/constants/color_constant.dart';
import 'package:dagsap3/constants/style_constant.dart';
import 'package:flutter/material.dart';

class FormCovid extends StatefulWidget {
  @override
  _FormCovidState createState() => _FormCovidState();
}

class _FormCovidState extends State<FormCovid> {
  String _valBagian;
  String _valYesNo;
  String _valTiga;
  String _valbatuk;
  List _listBagian = [
    "FAT",
    "Collector",
    "Marketing",
    "HRD & GA",
    "Sales",
    "Kurir",
    "Produksi",
    "QA/QC",
    "Finish Good",
    "PPIC & WHS",
    "WWTP"
  ];
  List _listyesno = ["Yes", "No"];

  List _listTiga = ["Normal", "Berkurang", "Hilang"];

  List _listBatuk = ["Tidak", "Batuk Berdahak", "Batuk Kering"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mBgColor,
        body: Stack(children: <Widget>[
          Container(
            height: 190,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/hidercov.png'),
                    fit: BoxFit.fill)),
          ),
          Container(
              child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              SizedBox(
                height: size.height * 0.07,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Monitoring Khusus Covid-19",
                  style: hdfont,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                height: 1000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13)),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Isikan Data Dengan Benar',
                            style: defa,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Nama',
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: dagsapred))),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            padding:
                                EdgeInsets.only(left: 20, top: 5, right: 20),
                            child: DropdownButton(
                                hint: Text("Departemen/Bagian    "),
                                value: _valBagian,
                                items: _listBagian.map((value) {
                                  return DropdownMenuItem(
                                      child: Text(value), value: value);
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _valBagian = value;
                                  });
                                }))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Suhu Tubuh',
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: dagsapred))),
                          ),
                        )
                      ],
                    ),
                    Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Keadaan Indra Penciuman',
                          style: subdefa,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(left: 23, top: 5, right: 20),
                              child: DropdownButton(
                                  value: _valTiga,
                                  items: _listTiga.map((value) {
                                    return DropdownMenuItem(
                                        child: Text(value), value: value);
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valTiga = value;
                                    });
                                  }))
                        ],
                      )
                    ]),
                    Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Keadaan Indra Perasa',
                          style: subdefa,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(left: 50, top: 10, right: 20),
                              child: DropdownButton(
                                  value: _valTiga,
                                  items: _listTiga.map((value) {
                                    return DropdownMenuItem(
                                        child: Text(value), value: value);
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valTiga = value;
                                    });
                                  }))
                        ],
                      )
                    ]),
                    Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Apakah Merasa demam?',
                          style: subdefa,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(left: 80, top: 5, right: 20),
                              child: DropdownButton(
                                  value: _valYesNo,
                                  items: _listyesno.map((value) {
                                    return DropdownMenuItem(
                                        child: Text(value), value: value);
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valYesNo = value;
                                    });
                                  }))
                        ],
                      )
                    ]),
                    Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Apakah Batuk?',
                          style: subdefa,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(left: 55, top: 5, right: 20),
                              child: DropdownButton(
                                  value: _valbatuk,
                                  items: _listBatuk.map((value) {
                                    return DropdownMenuItem(
                                        child: Text(value), value: value);
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valbatuk = value;
                                    });
                                  }))
                        ],
                      )
                    ]),
                    Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Apakah Merasa pilek/flu?',
                          style: subdefa,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(left: 75, top: 5, right: 20),
                              child: DropdownButton(
                                  value: _valYesNo,
                                  items: _listyesno.map((value) {
                                    return DropdownMenuItem(
                                        child: Text(value), value: value);
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valYesNo = value;
                                    });
                                  }))
                        ],
                      ),
                    ]),
                    Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Apakah Merasa Sesak Nafas?',
                          style: subdefa,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(left: 47, top: 5, right: 20),
                              child: DropdownButton(
                                  value: _valYesNo,
                                  items: _listyesno.map((value) {
                                    return DropdownMenuItem(
                                        child: Text(value), value: value);
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valYesNo = value;
                                    });
                                  }))
                        ],
                      )
                    ]),
                    Row(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Apakah Merasa sakit Tenggorokan?',
                          style: subdefa,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(left: 10, top: 5, right: 20),
                              child: DropdownButton(
                                  value: _valYesNo,
                                  items: _listyesno.map((value) {
                                    return DropdownMenuItem(
                                        child: Text(value), value: value);
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valYesNo = value;
                                    });
                                  }))
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
            ]),
          ))
        ]));
  }
}
