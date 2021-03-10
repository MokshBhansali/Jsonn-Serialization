import 'package:flutter/material.dart';
import '../services/todo_services.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Json Serialize Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: getTodo(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null || !snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  var myData = snapshot.data[index];
                  return Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: borderColor(myData.completed),
                      ),
                    ),
                    child: ListTile(
                      leading: Text(myData.id.toString() ?? ""),
                      title: Text(myData.title ?? ""),
                      onTap: () => _scaffoldKey.currentState.showSnackBar(
                          SnackBar(content: Text(myData.title ?? ""))),
                    ),
                  );
                },
              );
          },
        ),
      ),
    );
  }

  borderColor(bool completed) {
    return completed == true ? Colors.green : Colors.red;
  }
}
