import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer( // para criar um menu, no hamburge
        child: Column(
          children: [
            UserAccountsDrawerHeader( // Para fazer meio que um cabecalho no menuBar
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://pps.whatsapp.net/v/t61.24694-24/319778579_525825209307559_198960954454785745_n.jpg?ccb=11-4&oh=01_AdTHjyVJLC10XeH22sSZlG5_DYAVXMLx2xZQN0aoGgQtzw&oe=640F418B'
                )
              ),
              accountName: const Text('Thiago Marques'), 
              accountEmail: const Text('thimarsilva18@gmail.com')
            ),
            ListTile(
              leading: const Icon(Icons.home), // para adicionar coisas do lado esquerdo
              title: const Text('inicio'),
              subtitle: const Text('tela de inicio'),
              onTap: () {
                print('home');
              }
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Logout'),
              subtitle: const Text('Finalizar sessao'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [
          CustomSwitch(),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Container(height: 10),
            const CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }
        ),
    );
    
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme, 
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
