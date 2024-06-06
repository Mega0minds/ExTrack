import 'package:flutter/material.dart';
import 'package:extrack/widget/color_extrack.dart';

class IndexApp extends StatefulWidget {
  const IndexApp({super.key});

  @override
  State<IndexApp> createState() => _IndexAppState();
}

int _count = 1;

class _IndexAppState extends State<IndexApp> {
  int currentPageIndex = 0;

  List<DateTime?> selectedDates = List<DateTime?>.filled(_count, null, growable: true);
  Future<void> _selectDate(BuildContext context, int index) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != selectedDates[index]) {
      setState(() {
        selectedDates[index] = pickedDate;
      });
    }
  }

  void _incrementCount() {
            _count++;
    selectedDates = List<DateTime?>.filled(_count, null);
    setState(() {
      
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Builder(builder: (context) {
        
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              indicatorColor: AppColor.faintPrimaryColor,
              selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Badge(
                    label: Text('2'),
                    child: Icon(Icons.notifications_sharp),
                  ),
                  label: 'Notifications',
                ),
              ],
            ),
            body: <Widget>[
              /// Home page
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBar(
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.settings),
                        )
                      ],
                      title: const Text("Welcome"),
                      leading: const CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            AssetImage("./lib/widget/img/Boaz.jpeg"),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: _incrementCount,
                    tooltip: 'Increment Counter',
                    child: const Icon(Icons.add),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: selectedDates.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            selectedDates[index] == null
                                ? 'Pick the budget date'
                                : 'Selected date for the budget: ${selectedDates[index]!.toLocal()}',
                          ),
                          trailing: const Icon(Icons.calendar_today),
                          onTap: () => _selectDate(context, index),
                        );
                      },
                    ),
                  )
                ],
              ),

            
              /// Notifications page
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBar(
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.settings),
                        )
                      ],
                      title: const Text("Welcome"),
                      leading: const CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage("./lib/widget/img/Boaz.jpeg")),
                    ),
                  ),

                  //Notification
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 8),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: ListTile(
                            leading: Icon(Icons.notifications_sharp),
                            title: Text('BUDGET CREATION'),
                            subtitle:
                                Text('You have successfully created a budget'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Icon(Icons.notifications_sharp),
                            title: Text('SPENDING'),
                            subtitle: Text('You spent 2,000 today'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ][currentPageIndex],
          ),
        );
      }),
    );
  }
}
