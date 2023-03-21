import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  // child: Image.network(
                  //   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Logo_TV_2015.png/250px-Logo_TV_2015.png'
                  // ) Esse e o jeito de pegar imagem direto da internet
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(height: 20),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 20, bottom: 12
                    ),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text){
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (text){
                            password = text;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextButton(
                          // style: Colors.red, 
                          onPressed: () {
                            if(email == 'thimarsilva18@gmail.com' && password == '2306'){
                              // so o push ele aparece o botao de voltar para a tela antiga
                              // quando tem o pushReplacement ele nao aparece o botao de voltar, que nesse caso e o mais interessante
                              Navigator.of(context).pushReplacementNamed(
                                '/home' //So precisa disso pra eu fazer o push com as rotas ja setadas no app_widget
                                // MaterialPageRoute(builder: (context) => const HomePage()), Isso daqui eu uso quando eu quero fazer o pushReplacement
                              );
                            } else {
                              print('a senha esta incorreta');
                            }
                          },
                          child: const SizedBox(
                            width: double.infinity,
                            child: Text('Entrar', textAlign: TextAlign.center,)
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( // Esse Stack vai empilhar todos os Widgtes que voce colocar nele, exemplo o bg vermelho
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ],
      ),
    );
  }
}
