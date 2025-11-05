import 'package:couldai_user_app/widgets/chat_view.dart';
import 'package:couldai_user_app/widgets/side_nav_rail.dart';
import 'package:couldai_user_app/widgets/terminal_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideNavRail(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: ChatView(),
                ),
                const SizedBox(height: 4),
                const Expanded(
                  flex: 2,
                  child: TerminalView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
