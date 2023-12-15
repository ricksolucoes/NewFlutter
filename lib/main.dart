import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget é a raiz da sua aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demostração Flutter',
      theme: ThemeData(
        // Este é o tema da sua aplicação.
        //
        // TENTE ISSO: Execute sua aplicação com "flutter run". Você verá
        // que a aplicação possui uma barra de ferramentas roxa. Em seguida, sem fechar o aplicativo,
        // tente alterar o seedColor no colorScheme abaixo para Colors.green
        // e depois invoque "hot reload" (salve suas alterações ou pressione o botão "hot
        // reload" em um ambiente de desenvolvimento integrado (IDE) compatível com o Flutter, 
        // ou pressione "r" se você utilizou a linha de comando para iniciar o aplicativo).
        //
        // Observe que o contador não foi reiniciado para zero; o estado da aplicação
        // não é perdido durante o recarregamento. Para redefinir o estado, use hot
        // restart em vez disso.
        //
        // Isso também funciona para código, não apenas para valores: a maioria das alterações de código pode ser
        // testada apenas com um hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 7, 63, 3)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home page - Demostração Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta chamada para setState informa ao framework Flutter que algo foi
      // alterado neste State, o que faz com que ele execute novamente o método build abaixo
      // para que a interface possa refletir os valores atualizados. Se alterarmos
      // _counter sem chamar setState(), então o método build não seria
      // chamado novamente e, portanto, nada pareceria acontecer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  // Este método é executado novamente toda vez que setState é chamado, por exemplo, como feito
  // pelo método _incrementCounter acima.
  //
  // O framework Flutter foi otimizado para tornar a execução repetida de métodos build
  // rápida, para que você possa simplesmente reconstruir qualquer coisa que precise ser atualizada
  // em vez de ter que alterar individualmente instâncias de widgets.
    return Scaffold(
      appBar: AppBar(
        // TENTE ISSO: Tente mudar a cor aqui para uma cor específica (talvez
        // Colors.amber?) e acione um hot reload para ver a barra de aplicativos
        // mudar de cor enquanto as outras cores permanecem as mesmas.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Aqui pegamos o valor do objeto MyHomePage que foi criado pelo
        // método App.build e o usamos para definir o título da nossa barra de aplicativos.
        title: Text(widget.title),
      ),
      body: Center(
        // Center é um widget de layout. Ele pega um único filho e o posiciona
        // no centro do pai.
        child: Column(
          // Column também é um widget de layout. Ele pega uma lista de filhos e
          // os organiza verticalmente. Por padrão, ele dimensiona para ajustar-se
          // aos filhos horizontalmente e tenta ter a altura do pai.
          //
          // Column possui várias propriedades para controlar como ele se dimensiona e
          // como posiciona seus filhos. Aqui, usamos mainAxisAlignment para
          // centralizar os filhos verticalmente; o eixo principal aqui é o eixo vertical
          // porque as Columns são verticais (o eixo transversal seria
          // horizontal).
          //
          // TENTE ISSO: Chame "debug painting" (escolha a ação "Toggle Debug Paint"
          // na IDE ou pressione "p" no console) para ver a
          // estrutura de arame para cada widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você pressionou o botão tantas vezes.:',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.group_add_sharp),
      ), // Esta vírgula final facilita a formatação automática para os métodos de construção.
    );
  }
}
