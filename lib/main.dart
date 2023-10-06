import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Latihan UTS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homescreen(),
    );
  }
}
class Homescreen extends StatelessWidget{
    final List<String> nama = ["Kent Christopher", "Andy Kho", "Ian Frederick Wijaya"];
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Latihan UTS'),
        ),
        body: ListView.builder(
          itemCount: nama.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Row(
                children: [
                  Text(
                    'Nama: ${nama[index]}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('View'),
                  )
                ]
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder:  (_) => Anotherscreen(),
                )
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(
            Icons.hot_tub_outlined,
            color: Colors.white,
            size: 30.0,
          ),
        ),
      );
    }
  }


class Anotherscreen extends StatelessWidget{
    final List<String> nim = ["32210101", "32210081", "32210079"];
    final List<String> ultah = ["19-06-2003", "03-04-2003", "24-01-2003"];
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Latihan UTS'),
        ),
        body: ListView.builder(
          itemCount: nim.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Row(
                children: [
                  Text(
                    'NIM: ${nim[index]} Tanggal Lahir: ${ultah[index]}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Exit'),
                  )
                ]
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder:  (_) => Homescreen(),
                ),
              )
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(
            Icons.hot_tub_outlined,
            color: Colors.white,
            size: 30.0,
          ),
        ),
      );
    }
  }
