import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_mobile/components/textInputDecoration.dart';
import 'package:teste_mobile/controllers/user.controller.dart';
import 'package:teste_mobile/routes/routes.dart';
import 'package:teste_mobile/widgets/title.widgets%20copy.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final FocusNode _focusNode = FocusNode();
  final FocusNode _focusNode2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final radio = screen.width * 0.3;
    var finalUser = Provider.of<UserController>(context, listen: false).user;
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          height: screen.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primary,
                size: screen.height * 0.1,
              ),
              SizedBox(
                height: screen.height * 0.05,
              ),
              Container(
                height: screen.height * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radio),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Form(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidgets.legend("User", screen),
                          SizedBox(
                            width: screen.width * 0.8,
                            child: TextFormField(
                              onChanged: (value) => finalUser.userName = value,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              keyboardType: TextInputType.emailAddress,
                              focusNode: _focusNode,
                              decoration: decorationField(),
                            ),
                          ),
                          SizedBox(
                            height: screen.height * 0.02,
                          ),
                          TitleWidgets.legend("Password", screen),
                          SizedBox(
                            width: screen.width * 0.8,
                            child: TextFormField(
                              obscureText: true,
                              focusNode: _focusNode2,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              keyboardType: TextInputType.visiblePassword,
                              decoration: decorationField(),
                            ),
                          ),
                          SizedBox(
                            height: screen.height * 0.05,
                          ),
                          SizedBox(
                            width: screen.width * 0.8,
                            child: ElevatedButton(
                              onPressed: () async {
                                _focusNode.unfocus();
                                _focusNode2.unfocus();
                                Navigator.pushNamed(
                                    context, AppRoutes.HOME_PAGE);
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("LOGIN",
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
      ),
    );
  }
}
