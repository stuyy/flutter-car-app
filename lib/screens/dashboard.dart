import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red[800],
        onPressed: () {

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.red[800],
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {

                    },
                  ),
                  margin: EdgeInsets.only(left: 25, right: 5),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.access_alarm),
                    color: Colors.white,
                    onPressed: () {

                    },
                  ),
                  margin: EdgeInsets.only(left: 5, right: 5),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(Icons.attach_money),
                    color: Colors.white,
                    onPressed: () {

                    },
                  ),
                  margin: EdgeInsets.only(left: 5, right: 5),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.access_alarm),
                    color: Colors.white,
                    onPressed: () {

                    },
                  ),
                  margin: EdgeInsets.only(left: 5, right: 25),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}