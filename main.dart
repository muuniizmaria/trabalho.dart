import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final foto = CircleAvatar(
      backgroundImage: NetworkImage("https://scontent-for2-1.xx.fbcdn.net/v/t39.30808-6/512681238_1133088775525516_1574849824198730410_n.jpg?stp=dst-jpg_p280x280_tt6&_nc_cat=101&ccb=1-7&_nc_sid=127cfc&_nc_ohc=m0p_BccoMd4Q7kNvwHkjMY7&_nc_oc=AdmGlZ2ePLDfTiv4AgfIeqZv9h7qXc5K9jbrGbh4ux-7VEfvEr9W3VyLVQoeUotMW9o&_nc_zt=23&_nc_ht=scontent-for2-1.xx&_nc_gid=nQBBYvrCWsRaD_wuxOH6Ww&oh=00_AfM3MWiiI_xZyMJJ67wkYTbMeGmQXoFru6KvToLHUD4YTg&oe=6860D515"),
      radius: 150,
    );
    
    final nome = Text(
      'Maria Clara',
      style: TextStyle(fontSize: 30),
      textAlign: TextAlign.center,
    );
    
    final botaoTelefone = IconButton(
      color: Colors.blue,
      icon: const Icon(Icons.phone),
      onPressed: () async {
        final url = Uri(scheme: 'tel', path: '91095368');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        }
      },
    );
    
    final botaoEmail = IconButton(
      color: Colors.blue,
      icon: const Icon(Icons.mail),
      onPressed: () async {
        final url = Uri(scheme: 'mailto', path: 'mariaclarasilvamuniz79@gmail.com');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        }
      },
    );
    
    final botaoSMS = IconButton(
      color: Colors.blue,
      icon: const Icon(Icons.sms),
      onPressed: () async {
        final url = Uri(scheme: 'sms', path: '91095368');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        }
      },
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botaoTelefone, 
              botaoEmail, 
              botaoSMS,
            ],
          ),
        ],
      ),
    );
  }
}
