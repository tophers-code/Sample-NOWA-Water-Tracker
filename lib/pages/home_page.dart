import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/components/history_view.dart';
import 'package:water_tracker/components/home_view.dart';
import 'package:water_tracker/components/settings_view.dart';
import 'package:water_tracker/globals/water_state.dart';

@NowaGenerated({'auto-width': 436.0, 'auto-height': 764.0})
class HomePage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

@NowaGenerated()
class _HomePageState extends State<HomePage> {
  int? pageIndex = 1;

  @override
  void initState() {
    super.initState();
    WaterState.of(context, listen: false).loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: IndexedStack(
                index: pageIndex,
                sizing: StackFit.loose,
                children: [
                  const HistoryView(),
                  const SingleChildScrollView(
                    child: HomeView(),
                  ),
                  const SettingsView()
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              IconData(63471, fontFamily: 'MaterialIcons'),
              color: Color(0xff000000),
            ),
            label: 'History',
            activeIcon: Icon(
              const IconData(59920, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              IconData(58136, fontFamily: 'MaterialIcons'),
              color: Color(0xff000000),
            ),
            label: 'Home',
            activeIcon: Icon(
              const IconData(58136, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              IconData(58751, fontFamily: 'MaterialIcons'),
              color: Color(0xff000000),
            ),
            label: 'Settings',
            activeIcon: Icon(
              const IconData(58751, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.tertiary,
            ),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: const Color(0xff242424),
        selectedItemColor: Theme.of(context).colorScheme.tertiary,
        currentIndex: pageIndex!,
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
