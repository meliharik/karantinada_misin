import 'package:flutter/material.dart';
import 'package:karantina/constants.dart';
import 'package:karantina/services/advert-services.dart';

class ResultPage extends StatefulWidget {
  final String name;
  final int age;
  final String gender;
  const ResultPage({Key key, this.name, this.age, this.gender})
      : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final AdvertService _advertService = AdvertService();

  yasKontrolFonk() {
    if (widget.age < 20) {
      return _yirmiYasAltiColumn();
    } else if (widget.age >= 65) {
      return _altmisYasUstuColumn();
    } else {
      return _aradakiYaslarColumn();
    }
  }

  @override
  void initState() {
    super.initState();
    _advertService.showBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColour,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kBackgroundColour,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 10),
                  child: Text(
                    'Merhaba ${widget.name} ${widget.gender}',
                    style: TextStyle(color: kInactiveCardColour, fontSize: 35),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, top: 15, bottom: 15.0),
                  child: Text(
                    'COVID-19 tedbirleri kapsamında yaşınız gereği aşağıdaki saatlerde dışarı çıkabilirsiniz.',
                    style: TextStyle(color: kInactiveCardColour, fontSize: 20),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kInactiveCardColour.withOpacity(0.8)),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.32,
                  child: yasKontrolFonk(),
                ),
              ],
            )
          ],
        ));
  }

  _altmisYasUstuColumn() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Pazartesi',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '10.00 - 13.00',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: kBackgroundColour,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Salı          ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '10.00 - 13.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: kBackgroundColour,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Çarşamba ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '10.00 - 13.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: kBackgroundColour,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Perşembe ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '10.00 - 13.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: kBackgroundColour,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Cuma        ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '10.00 - 13.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: kBackgroundColour,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Cumartesi',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '10.00 - 13.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: kBackgroundColour,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Pazar       ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '10.00 - 13.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _aradakiYaslarColumn() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Pazartesi',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '05.00 - 23.59',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: kBackgroundColour,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Salı          ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '00.00 - 23.59',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Çarşamba ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '00.00 - 23.59',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Perşembe ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '00.00 - 23.59',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Cuma        ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '00.00 - 23.59',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Cumartesi',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '00.00 - 20.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Pazar       ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '10.00 - 20.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _yirmiYasAltiColumn() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Pazartesi', style: TextStyle(fontSize: 20)),
                  Text(
                    '13.00 - 16.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Salı          ', style: TextStyle(fontSize: 20)),
                  Text(
                    '13.00 - 16.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Çarşamba ', style: TextStyle(fontSize: 20)),
                  Text(
                    '13.00 - 16.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Perşembe ', style: TextStyle(fontSize: 20)),
                  Text(
                    '13.00 - 16.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Cuma        ', style: TextStyle(fontSize: 20)),
                  Text(
                    '13.00 - 16.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(color: kBackgroundColour),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Cumartesi', style: TextStyle(fontSize: 20)),
                  Text(
                    '13.00 - 16.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: kBackgroundColour,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Pazar       ', style: TextStyle(fontSize: 20)),
                  Text(
                    '13.00 - 16.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
