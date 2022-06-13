import 'loginscreen.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const loginscreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30.0,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Mari Kita Mulai!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Buat satu akun untuk mengakses semua fitur',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.person_outline,
                            size: 18.0,
                          ),
                        ),
                        labelText: 'Nama Lengkap',
                        hintText: 'Masukkan Nama Lengkap',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.mail_outline,
                            size: 18.0,
                          ),
                        ),
                        labelText: 'Email',
                        hintText: 'Masukkan Alamat Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.phone_android_outlined,
                            size: 18.0,
                          ),
                        ),
                        labelText: 'Nomor HP',
                        hintText: 'Masukkan Nomor HP',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
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
                        hintText: 'Buat Password Anda',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.lock_outline,
                            size: 18.0,
                          ),
                        ),
                        labelText: 'Konfirmasi Password',
                        hintText: 'Ketik Ulang Password Anda',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Fitur dalam pengembangan'),
                              action: SnackBarAction(label: 'OK', onPressed: () {}),
                            ));
                          },
                          child: Text('BUAT AKUN'))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sudah Punya Akun?'),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const loginscreen()));
                        },
                        child: Text(
                          'Login Disini',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
