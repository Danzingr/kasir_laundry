import 'dashboard.dart';
import 'flutter/material.dart';
import 'hive_flutter/hive_flutter.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  String user = 'admin';
  String pass = 'admin';

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    'images/undraw_social_thinking_7ule.png',
                    height: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Selamat Datang',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Login ke akun Anda sebelumnya',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: TextFormField(
                    controller: userNameController,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.person_outline,
                            size: 18.0,
                          ),
                        ),
                        labelText: 'Username',
                        hintText: 'Silahkan masukkan username',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.lock_outline,
                            size: 18.0,
                          ),
                        ),
                        labelText: 'Password',
                        hintText: 'Silahkan masukkan password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 175, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Fitur dalam pengembangan'),
                        action: SnackBarAction(label: 'OK', onPressed: () {}),
                      ));
                    },
                    child: Text(
                      'Lupa Password?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                        onPressed: () {
                          if (userNameController.text == user && passwordController.text == pass) {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => dashboard()));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login berhasil!')));
                            var box = Hive.box('userBox');
                            box.put('isLogin', true);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Username atau password salah!')));
                          }
                        },
                        child: Text('LOG IN')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Atau hubungkan menggunakan',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 130,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Fitur dalam pengembangan'),
                                action: SnackBarAction(label: 'OK', onPressed: () {}),
                              ));
                            },
                            icon: Icon(Icons.facebook),
                            label: Text('Facebook'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                            ),
                          )),
                      SizedBox(
                          height: 40,
                          width: 130,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Fitur dalam pengembangan'),
                                action: SnackBarAction(label: 'OK', onPressed: () {}),
                              ));
                            },
                            icon: Icon(Icons.facebook),
                            label: Text('Google'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[400],
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Tidak punya akun?'),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const signup()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
