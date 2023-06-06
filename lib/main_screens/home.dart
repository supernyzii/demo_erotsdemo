import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:istorebtaxx/minor_screens/search.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()));
            },
            child: Container(
              height:35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow, width: 1.4),
                borderRadius: BorderRadius.circular(25)),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Text('What are you looing for?',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Text('Search',
                          style: TextStyle(fontSize: 16, color: Colors.grey),),
                      ),
                  )
                ],
              ),
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.yellow,
            indicatorWeight: 8,
            isScrollable: true,
            tabs: [
              RepeatedTab(label: 'Men'),
              RepeatedTab(label: 'Women'),
              RepeatedTab(label: 'Shoes'),
              RepeatedTab(label: 'Bags'),
              RepeatedTab(label: 'Electronics'),
              RepeatedTab(label: 'Accessories'),
              RepeatedTab(label: 'Home & Garden'),
              RepeatedTab(label: 'Kids'),
              RepeatedTab(label: 'Beauty'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('men screen')),
            Center(child: Text('women screen')),
            Center(child: Text('shoes screen')),
            Center(child: Text('bags screen')),
            Center(child: Text('electronics screen')),
            Center(child: Text('accessories screen')),
            Center(child: Text('home and garden screen')),
            Center(child: Text('kids screen')),
            Center(child: Text('beauty screen')),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
      ),
    );
  }
}


