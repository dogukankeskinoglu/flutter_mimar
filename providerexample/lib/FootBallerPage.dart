import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/component/card/footballerCard.dart';
import 'package:providerexample/data/footBallerData.dart';
import 'package:providerexample/model/footballerModel.dart';


class FootBallerProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Page"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Consumer<FootBallerModel>(
              builder: (context, footBallerObject, child) => ListView.builder(
                itemCount: footBallerObject.getFootballerList().length,
                itemBuilder: (context, index) =>
                    FootBallerCard(footballer: footballerList[index]),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width,
            child: Consumer<FootBallerModel>(
              builder: (context, footBallerObject, child) => ElevatedButton(
                  onPressed: () {
                    footBallerObject.addFootBaller();
                  },
                  child: Text("Add Footballer")),
            ),
          ),
        ],
      ),
    );
  }
}
