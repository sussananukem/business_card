import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kDebugMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/sussan.jpg') ,
                    ),
                    const Text('Sussan Anukem',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        fontFamily: 'Pacifico',
                      ),),
                    Text('CROSS PLATFORM DEVELOPER',
                      style: TextStyle(
                        color: Colors.teal.shade100,
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),),
                    SizedBox(
                      height: 20.0,
                      width: 150.0,
                      child: Divider(
                        color: Colors.teal[100],
                      ),
                    ),

                    //Phone Number Field
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: const Icon(Icons.phone,
                          color: Colors.teal,),
                        title: Text('+233 559 74 8280',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 16.0,
                              color: Colors.teal[900]
                          ),),
                      ),
                    ),

                    //Email Field
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: const Icon(Icons.email,
                          color: Colors.teal,),
                        title: Text('sussananukem20@gmail.com',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 16.0,
                              color: Colors.teal[900]
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}
