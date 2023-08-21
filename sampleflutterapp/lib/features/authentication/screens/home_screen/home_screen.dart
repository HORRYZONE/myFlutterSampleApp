import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
