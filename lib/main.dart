
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ),
  );
}

//Stateless: Redraw Component and Data, Mutable variable (final)
//Stateful: Keep that Data, changable variable and wiget

//Scaffold: 사용자에게 보여질 기본적인 어플리케이션 요소
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //late: 아직 사용할 준비가 되지 않은 변수 (초기화 이전의 값)
  late final TextEditingController _email;
  late final TextEditingController _password;


  //페이지 구동 시 값 처리
  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  //페이지 이동 혹은 종료 시 값 처리
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register')),
      //[mac단축키] command + .: 현재 위젯을 다른 위젯으로 감싼다.
      //Center wieget: 이용 가능한 전체 영역의 수평 수직상 가운데에 chlid 요소를 위치
      //Column wieget: 요소들을 수직으로 정렬
      body:FutureBuilder(
        future: Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                ),
        builder: (context, snapshot) {
          return Column(
          children: [
            TextField(
              controller: _email,
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter your Email here.',
              ),
            ),
            TextField(
              controller: _password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Enter your Password here.',
              ),
            ),
            TextButton(
              onPressed: () async {
        
                final email = _email.text;
                final password = _password.text;
                
      
                final userCredential = FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email, 
                  password: password);
                print(userCredential);
              }, 
            child: const Text('Register')
              ),
          ],
        );
        },
      ),
    );
  }
}