import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travell/cubit/app_cubits.dart';
import 'package:travell/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: ((context) => AppCubits(data: DataServices())),
        child: const AppCubitLogics(),
      ),
    );
  }
}
