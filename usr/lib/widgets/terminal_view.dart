import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TerminalView extends StatelessWidget {
  const TerminalView({super.key});

  @override
  Widget build(BuildContext context) {
    final terminalOutput = [
      "Could AI Terminal [Version 1.0.0]",
      "(c) Could AI Corporation. All rights reserved.",
      "",
      "user@could-ai:~\$ ",
    ];

    return Container(
      padding: const EdgeInsets.all(12.0),
      color: const Color(0xFF181818),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Terminal Toolbar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            color: const Color(0xFF2D2D2D),
            child: Row(
              children: [
                const Text(
                  "TERMINAL",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.copy, size: 16),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: terminalOutput.join('\n')));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Terminal content copied!')),
                    );
                  },
                  tooltip: 'Copy Content',
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, size: 16),
                  onPressed: () {
                    // Clear terminal action
                  },
                  tooltip: 'Clear Terminal',
                ),
              ],
            ),
          ),
          // Terminal Output
          Expanded(
            child: ListView.builder(
              itemCount: terminalOutput.length,
              itemBuilder: (context, index) {
                return Text(
                  terminalOutput[index],
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    color: Colors.white70,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
