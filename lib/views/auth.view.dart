import 'package:flutter/material.dart';
import 'package:teste_mobile/components/textDecoratio.dart';
import 'package:teste_mobile/routes/routes.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    final _radio = _screen.width * 0.3;
    return Scaffold(
      body: Container(
        height: _screen.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.primary,
              size: _screen.height * 0.1,
            ),
            SizedBox(
              height: _screen.height * 0.05,
            ),
            Container(
              height: _screen.height * 0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_radio),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Expanded(
                    flex: 1,
                    child:  Center(
                      child: Text(
                        "Welcome",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "User",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: _screen.width * 0.8,
                          child: TextFormField(
                            style:
                                const TextStyle(color: Colors.black, fontSize: 20),
                            keyboardType: TextInputType.emailAddress,
                            decoration: decorationField(),
                          ),
                        ),
                        SizedBox(
                          height: _screen.height * 0.02,
                        ),
                        const Text(
                          "Password",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: _screen.width * 0.8,
                          child: TextFormField(
                            style:
                                const TextStyle(color: Colors.black, fontSize: 20),
                            keyboardType: TextInputType.emailAddress,
                            decoration: decorationField(),
                          ),
                        ),
                        SizedBox(
                          height: _screen.height * 0.05,
                        ),
                        SizedBox(
                          width: _screen.width * 0.8,
                          child: ElevatedButton(
                            onPressed: ()  {
                               Navigator.pushNamed(context, AppRoutes.HOME_PAGE);
                            },
                            child: const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:  Text("LOGIN",
                                  style: TextStyle(fontSize: 28)),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
