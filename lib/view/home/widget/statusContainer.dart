import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_ar_condicionad_ifmt2021/view/home/widget/qrCode.dart';

class StatusContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 300),
      color: Colors.grey[200],
      width: MediaQuery.of(context).size.width * 90 / 100,
      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Status',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: [Icon(Icons.wifi), Text(' Conectado')]),
              Container(
                child: Text(
                  'Sala  4548 conectada',
                  style: TextStyle(fontSize: 15, color: Colors.green[600]),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(color: Colors.greenAccent[700]),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wifi, color: Colors.black),
                        Text('Conectar no Wifi',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.greenAccent[700]),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code_scanner_sharp, color: Colors.black),
                      Text('Detectar QR code',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QRViewExample()));
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
