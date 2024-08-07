import 'package:aprenda_ingles/Telas/Numeros.dart';
import 'package:aprenda_ingles/Telas/Vogais.dart';
import 'package:aprenda_ingles/Telas/bichos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3, 
      vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.brown,
        title: Text("Aprenda Ingles"),
        bottom: TabBar(
          indicatorWeight: 4,
   
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          labelColor: Colors.white,
        
          controller: _tabController,
          tabs: [
            Tab ( text: "Bichos"),
            Tab(text: "Numeros"),
            Tab( text: "Vogais")
          ]
          )
       ),
       body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais()
          
       ],
       ),
    );
  }
}