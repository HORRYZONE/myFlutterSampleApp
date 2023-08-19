import 'package:flutter/material.dart';
import 'package:sampleflutterapp/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('testApp'),
        leading: Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
      ),
      body: Padding(padding: EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Text('Heading', style: Theme.of(context).textTheme.displayMedium,),
          Text('subHeading', style: Theme.of(context).textTheme.titleSmall),
          Text('paragraph', style: Theme.of(context).textTheme.bodyLarge),
          ElevatedButton(onPressed: (){}, child: Text("elevated button")),
          OutlinedButton(onPressed: (){}, child: Text("outlined button")),
        ],
      ),
      ),
    );
  }
}
