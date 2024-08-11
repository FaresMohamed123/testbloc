import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/feature/presentation/cubit/feature_cubit.dart';

void main() {
  runApp(const MyApp());

  print('ghareeb');
    print('ghareeb');
        print('fares');
    print('mohammed');


        print('ghareeb');
          print('ghareeb');
            print('ghareeb');
                print('fares');
    print('mohammed');
          
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1-2',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeatureCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
               Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<FeatureCubit, FeatureState>(
                  builder: (context, state) {
                   var cubit=  BlocProvider.of<FeatureCubit>(context);
                return Column(
                        children: [
                          Text(
                            '${cubit.counter}',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          IconButton(
                              onPressed: () {
                          //   BlocProvider.of<FeatureCubit>(context).add();

                               cubit.add();
                              },
                              icon: const Icon(Icons.add)),
                        ],
                      )
                    ;
              }),
            ])),
       
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

//m5