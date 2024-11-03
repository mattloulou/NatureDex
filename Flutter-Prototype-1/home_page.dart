class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NatureDex'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/nature-dex');
          },
          child: Text('Go to Nature Dex'),
        ),
      ),
      floatingActionButton: FloatingButton(
        onPressed: () {
          Navigator.pushNamed(context, '/camera');
        },
        child: Icon(Icons.camera_alt),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/account');
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}