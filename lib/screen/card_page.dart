import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final Color _huecolor = const Color.fromRGBO(204, 231, 194, 1.0);
  final Color _hqucolor = const Color.fromRGBO(204, 231, 194, 0.8);
  final Color _hrtucolor = const Color.fromRGBO(48, 71, 94, 1.0);
  int ?_cardindex = null;

  List musiclist = [
    " Blues Music",
    "Jazz Music",
    "Rhythm and Blues Music",
    "Rock and Roll Music",
    "Rock Music",
    "Country Music",
    " Soul Music",
    "Dance Music",
    "Korean court music",
    "Ars antiqua",
    "Hip Hop Music",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _hrtucolor,
      appBar: AppBar(
        title: Text(
          "C A R D S",
          style: TextStyle(color: _huecolor),
        ),
        centerTitle: true,
        foregroundColor: Colors.transparent,
        backgroundColor: _hrtucolor,
      ),
      body: ListView.builder(
          itemCount: musiclist.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: _huecolor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        )),
                    padding: const EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(musiclist[index].toString()),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_circle_sharp,
                            color: _hrtucolor,
                          ),
                          onPressed: () {
                            setState(() {
                              _cardindex == index
                                  ? _cardindex = null
                                  : _cardindex = index;
                            });
                          },
                        )
                      ],
                    )),
                AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                        color: _hqucolor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        )),
                    height: _cardindex == index ? 80 : 0,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Detail Card"),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                musiclist.removeAt(index);
                                _cardindex=null;
                              });
                            },
                            icon: Icon(
                              Icons.delete,
                              color: _hrtucolor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: _hrtucolor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: _hrtucolor,
                            )),
                      ],
                    ))
              ],
            );
          }),
    );
  }
}
