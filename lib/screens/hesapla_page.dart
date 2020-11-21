import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:karantina/components/bottom_button.dart';
import 'package:karantina/components/icon_content.dart';
import 'package:karantina/components/reusable_card.dart';
import 'package:karantina/constants.dart';
import 'package:karantina/screens/result_page.dart';

class HesaplaPage extends StatefulWidget {
  @override
  _HesaplaPageState createState() => _HesaplaPageState();
}

enum Gender {
  male,
  female,
}

class _HesaplaPageState extends State<HesaplaPage> {
  Gender selectedGender;
  int age = 19;
  String isim;
  final _formKey = GlobalKey<FormState>();
  String cinsiyet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffCFD8DC),
        resizeToAvoidBottomPadding: false,
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                        if (selectedGender == Gender.male) {
                          cinsiyet = "bey";
                        } else if (selectedGender == Gender.female) {
                          cinsiyet = "hanım";
                        }
                      },
                      colour: selectedGender == Gender.male
                          ? Color(0xffFFC107)
                          : Color(0xff455A64),
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Erkek',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                        if (selectedGender == Gender.male) {
                          cinsiyet = "bey";
                        } else if (selectedGender == Gender.female) {
                          cinsiyet = "hanım";
                        }
                      },
                      colour: selectedGender == Gender.female
                          ? Color(0xffFFC107)
                          : Color(0xff455A64),
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Kadın',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  onSaved: (girilenDeger) => isim = girilenDeger,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Lütfen isminizi girin.';
                    } else if (value.contains("@")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("1")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("2")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("3")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("4")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("5")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("6")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("7")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("8")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("9")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.contains("0")) {
                      return "Lütfen geçerli bir isim girin";
                    } else if (value.length >= 12) {
                      return "Max 12 karakter girebilirsiniz.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'İsminizi girin',
                    labelText: 'İsim',
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                  colour: kInactiveCardColour,
                  cardChild: ListView(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Yaşınız:',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                ' yaşındayım',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbColor: kActiveCardColour,
                              activeTrackColor: Colors.white,
                              overlayColor: kActiveCardColour.withOpacity(0.3),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                              value: age.toDouble(),
                              min: 0.0,
                              max: 120.0,
                              inactiveColor: Color(0xFF8D8E98),
                              onChanged: (double newValue) {
                                setState(() {
                                  age = newValue.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            BottomButton(
              buttonTitle: 'Sorgula',
              onTap: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  if (selectedGender == null) {
                    return Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Lütfen bir cinsiyet seçin')));
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                age: age,
                                gender: cinsiyet,
                                name: isim,
                              )));
                }
              },
            ),
          ],
        ));
  }
}
