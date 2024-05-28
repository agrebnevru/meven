import 'package:flutter/material.dart';
import 'dart:developer' as logger;

void __onButtonPressed() {
  logger.log('__onButtonPressed 777');
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false, // скрываем надпись debug
        theme: new ThemeData(
          primaryColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
          // textTheme: new TextTheme(body1: new TextStyle(color: Colors.black))),
        ),
        home: new Scaffold(
          // appBar: new ApplicationBar(),
          body: new Body(),
          // drawer: new SideMenu(),
          // backgroundColor: Colors.black,
        ));
  }
}

class ApplicationBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return new AppBar(
      title: new RichText(
        text: new TextSpan(
          children: <TextSpan>[
            new TextSpan(text: 'M', style: TextStyle(color: Colors.red)),
            new TextSpan(text: 'EVEN', style: TextStyle(color: Colors.white)),
          ],
          style: TextStyle(fontSize: 40.0),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: Container(
            color: Colors.black,
            child: new ListView(children: <Widget>[
              new DrawerHeader(
                child: new Text('Drawer Header'),
                decoration: new BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              new ListTile(
                title:
                    new Text('Item 1', style: TextStyle(color: Colors.white)),
                onTap: () {
                  logger.log('Item 1 -> onTap');
                },
              ),
              new ListTile(
                title:
                    new Text('Item 2', style: TextStyle(color: Colors.white)),
                onTap: () {
                  logger.log('Item 2 -> onTap');
                },
              ),
            ])));
  }
}

/*
class Body extends StatelessWidget{
  Widget build(BuildContext context) {
    return new Center(child: new Column(
        children: [
          new Text('Hello World!'),
          new FlatButton(onPressed: __onButtonPressed, child: Text('open site'), color: Colors.red, textColor: Colors.white,)]
    ));
  }
}
*/

class LogoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RichText(
      textAlign: TextAlign.center,
      text: new TextSpan(
        children: <TextSpan>[
          new TextSpan(text: 'M', style: TextStyle(color: Colors.red)),
          new TextSpan(text: 'EVEN', style: TextStyle(color: Colors.white)),
        ],
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}

class ScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      color: Color.fromRGBO(29, 29, 29, 1),
      child: new Align(
          alignment: Alignment.center,
          child: new Stack(children: [
            new Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              new Container(
                width: MediaQuery.of(context).size.width * .5,
                height: 3,
                color: Colors.white,
              ),
              new LogoText(),
              new Container(
                width: MediaQuery.of(context).size.width * .5,
                height: 3,
                color: Colors.white,
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15),
                child: new Text(
                  'Наш опыт - путь к Вашему успеху',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              )
            ])
          ])),
    );
  }
}

class ScreenAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      color: Color.fromRGBO(29, 29, 29, 1),
      child: new Align(
          alignment: Alignment.center,
          child: new Padding(
              padding: new EdgeInsets.all(40),
              child: new Stack(children: [
                new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Padding(
                        padding: new EdgeInsets.only(bottom: 15),
                        child: new Text(
                          'О КОМПАНИИ',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          new Expanded(
                            flex: 4,
                            child: new Padding(
                              padding: new EdgeInsets.only(right: 8),
                              child: new Text(
                                'Our mission gives solution',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                            ),
                          ),
                          new Container(
                            height: 150,
                            width: 2,
                            color: Colors.white,
                          ),
                          new Flexible(
                            flex: 6,
                            child: new Padding(
                              padding: new EdgeInsets.only(left: 8),
                              child: new Text(
                                'Компания MEVEN оказывает полный спектр услуг по разработке сайтов. Сайт – необходимый для любого бизнеса инструмент для продаж. Важно, чтобы на нем была правильно и красиво представлена необходимая информация и им было удобно пользоваться.',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 15,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ])
              ]))),
    );
  }
}

BoxDecoration OurTeamItem() {
  return BoxDecoration(
    border: Border.all(),
  );
}

class ScreenOurTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      color: Color.fromRGBO(29, 29, 29, 1),
      child: new Align(
          alignment: Alignment.center,
          child: new Padding(
              padding: new EdgeInsets.all(20),
              child: new Stack(children: [
                new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Padding(
                        padding: new EdgeInsets.only(bottom: 15),
                        child: new Text(
                          'НАША КОМАНДА',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          new Expanded(
                            flex: 1,
                            child: new Padding(
                              padding: new EdgeInsets.only(right: 8),
                              child: new Container(
                                margin: EdgeInsets.symmetric(vertical: 15),
                                height: 300,
                                child: new ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    new Container(
                                      margin: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/kadikov.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        border: Border.all(
                                            width: 5,
                                            color:
                                                Color.fromRGBO(52, 52, 52, 1)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                      ),
                                      width: 250,
                                      height: 250,
                                      child: new Padding(
                                          padding: new EdgeInsets.all(10),
                                          child: new Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                new Padding(
                                                  padding: new EdgeInsets.only(
                                                      bottom: 5),
                                                  child: new Text(
                                                    'Роман Кадиков',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                new Padding(
                                                  padding: new EdgeInsets.only(
                                                      bottom: 0),
                                                  child: new Text(
                                                    'CEO / CoFounder',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            205, 189, 179, 1),
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ])),
                                    ),
                                    new Container(
                                      margin: const EdgeInsets.all(15),
                                      // padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/dyachenko.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        border: Border.all(
                                            width: 5,
                                            color:
                                                Color.fromRGBO(52, 52, 52, 1)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                      ),
                                      width: 250,
                                      height: 250,
                                      child: new Padding(
                                          padding: new EdgeInsets.all(10),
                                          child: new Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                new Padding(
                                                  padding: new EdgeInsets.only(
                                                      bottom: 5),
                                                  child: new Text(
                                                    'Владислав Дяченко',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                new Padding(
                                                  padding: new EdgeInsets.only(
                                                      bottom: 0),
                                                  child: new Text(
                                                    'CTO / CoFounder',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            205, 189, 179, 1),
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ])),
                                    ),
                                    new Container(
                                      margin: const EdgeInsets.all(15),
                                      // padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/tihonov.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        border: Border.all(
                                            width: 5,
                                            color:
                                                Color.fromRGBO(52, 52, 52, 1)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                      ),
                                      width: 250,
                                      height: 250,
                                      child: new Padding(
                                          padding: new EdgeInsets.all(10),
                                          child: new Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                new Padding(
                                                  padding: new EdgeInsets.only(
                                                      bottom: 5),
                                                  child: new Text(
                                                    'Илья Тихонов',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 17),
                                                  ),
                                                ),
                                                new Padding(
                                                  padding: new EdgeInsets.only(
                                                      bottom: 0),
                                                  child: new Text(
                                                    'CMO',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            85, 84, 85, 1),
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ])
              ]))),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
        child: new Column(children: <Widget>[
      new ScreenMain(),
      new ScreenAbout(),
      new ScreenOurTeam(),
    ]));
  }
}

void main() {
  runApp(new Application());
}
