import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DevicesScreen(),
    );
  }
}

class DevicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Devices'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.menu)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DeviceCard(
              title: 'Fi Smart Collar',
              batteryLevel: '46%',
              actions: [
                DeviceAction(icon: Icons.fitness_center, label: 'Activity Tracker'),
                DeviceAction(icon: Icons.nights_stay, label: 'Sleep Monitor'),
              ],
            ),
            SizedBox(height: 16.0),
            DeviceCard(
              title: 'Petcube Pet Camera',
              connected: true,
              actions: [
                DeviceAction(icon: Icons.link_off, label: 'Disconnect'),
                DeviceAction(icon: Icons.videocam, label: 'Stream'),
              ],
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                // style: ElevatedButton.styleFrom(primary: Colors.grey[300]),
                child: Text(
                  'ADD DEVICES',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'EXPLORE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            ExploreCard(
              title: 'Tips',
              description: 'Get Started with your Fi Smart Collar',
              imageUrl: 'https://via.placeholder.com/150',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'DISCOVER'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'EXPLORE'),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: 'MANAGE'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
        ],
        // selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        backgroundColor:Colors.lightGreen,
      ),
    );
  }
}

class DeviceCard extends StatelessWidget {
  final String title;
  final String? batteryLevel;
  final bool connected;
  final List<DeviceAction> actions;

  DeviceCard({
    required this.title,
    this.batteryLevel,
    this.connected = false,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                if (batteryLevel != null)
                  Text(
                    '$batteryLevel',
                    style: TextStyle(color: Colors.grey),
                  ),
                if (connected)
                  Text(
                    'Connected',
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: actions
                  .map((action) => Column(
                        children: [
                          Icon(action.icon, size: 32.0, color: Colors.black),
                          SizedBox(height: 8.0),
                          Text(action.label),
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class DeviceAction {
  final IconData icon;
  final String label;

  DeviceAction({required this.icon, required this.label});
}

class ExploreCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  ExploreCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(imageUrl, width: 80, height: 80, fit: BoxFit.cover),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
