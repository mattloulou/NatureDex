class PlantViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final plant = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(plant['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/${plant['image']}', width: 200),
            ),
            SizedBox(height: 16),
            Text(
              'Name: ${plant['name']}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Text(
              'Type: ${plant['type']}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 8),
            Text(
              'Last Capture Date: ${plant['dateCaptured']}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 16),
            Text(
              'Similar Species',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset('assets/hepatica.jpg', width: 50),
                    title: Text('Hepatica'),
                    subtitle: Text('Uncommon'),
                  ),
                  ListTile(
                    leading: Image.asset('assets/bloodroot.jpg', width: 50),
                    title: Text('Bloodroot'),
                    subtitle: Text('Common'),
                  ),
                  ListTile(
                    leading: Image.asset('assets/white_baneberry.jpg', width: 50),
                    title: Text('White Baneberry'),
                    subtitle: Text('Rare'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}