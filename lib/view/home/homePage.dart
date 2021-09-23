import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_ar_condicionad_ifmt2021/view/home/widget/botaoDesligar.dart';
import 'widget/botaoTemperatura.dart';
import 'widget/statusContainer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tamanhoDaTela = MediaQuery.of(context).size.height -
        (AppBar().preferredSize.height) -
        MediaQuery.of(context).padding.top;

    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black26,
              statusBarIconBrightness: Brightness.light),
          title: Text(
            "Controle",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey[900],
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.construction_outlined,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: tamanhoDaTela,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.9,
              0.5,
            ],
            colors: [
              Colors.grey.shade900,
              Colors.greenAccent.shade700,
            ],
          )),
          child: Column(
            children: [
              Flexible(
                flex: 3,
                child: BotaoTemperatura(),
              ),
              Flexible(
                flex: 2,
                child: StatusContainer(),
              ),
            ],
          ),
        ),
        floatingActionButton: BotaoDeDesligar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop);
  }
}
