import 'package:flutter/material.dart';
import '../main_page/title_bar/title_bar.dart';
import '../widgets/third_party/adaptive_scaffold.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onSignOut;

  const HomePage({
    required this.onSignOut,
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: const Text('Dashboard App'),
      actions: [
        TitleBar(),
      ],
      currentIndex: _pageIndex,
      destinations: const [
        AdaptiveScaffoldDestination(title: 'Home', icon: Icons.home),
        AdaptiveScaffoldDestination(title: 'Entries', icon: Icons.list),
        AdaptiveScaffoldDestination(title: 'Settings', icon: Icons.settings),
      ],
      body: _pageAtIndex(_pageIndex),
      onNavigationIndexChange: (newIndex) {
        setState(() {
          _pageIndex = newIndex;
        });
      },
/*      
      floatingActionButton:
          _hasFloatingActionButton ? _buildFab(context) : null,
*/
    );
  }

  static Widget _pageAtIndex(int index) {
    /*
    if (index == 0) {
      return const DashboardPage();
    }

    if (index == 1) {
      return const EntriesPage();
    }
*/

    return const Center(child: Text('Settings page'));
  }

  bool get _hasFloatingActionButton {
    if (_pageIndex == 2) return false;
    return true;
  }
}
