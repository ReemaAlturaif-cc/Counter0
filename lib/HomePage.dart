import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int count = 0;
  Counter0() {
    setState(() {
      count++;
    });
  }

  Reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 79, 129, 113),
        centerTitle: true,
        title: const Text(
            'وَٱسْتَغْفِرِ ٱللَّهَ إِنَّ ٱللَّهَ كَانَ غَفُورًا رَّحِيمًا',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.50,
                    height: MediaQuery.of(context).size.height / 1.50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(198, 137, 174, 162),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 9),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Text(
                          count.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Transform.translate(
                    offset: Offset(1, 9),
                    child: Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 79, 129, 113),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                              color: Colors.black,
                            )
                          ]),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () => Counter0(),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 70, 70, 70),
                                  shape: BoxShape.circle),
                            ),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(80, 80)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () => Reset(),
                                child: Icon(Icons.wifi_protected_setup),
                                style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(90, 255, 0, 0)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
