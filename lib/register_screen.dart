import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Register Screen'),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),

        // REMOVE THE BOTTOM SINGLECHILDSCROLLVIEW
        body: SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 28,
                    ),
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(
                    'Create an account',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.account_circle_rounded,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.account_circle_rounded,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.email,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                          child: const Text(
                            'REGISTER',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '''Already Have An Account ? ''',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 16.0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )

        // Padding(
        //   padding: const EdgeInsets.all(30),
        //   // child: Center(
        //   child: SingleChildScrollView(
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 25),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(children: [
        //             IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        //             Text(
        //               'Create an account',
        //               style: TextStyle(
        //                 fontWeight: FontWeight.w900,
        //                 fontSize: 30.0,
        //                 color: Theme.of(context).primaryColor.withOpacity(0.75),
        //                 // color: Colors.purple,
        //               ),
        //             ),
        //           ]),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // ),
        );
  }
}
