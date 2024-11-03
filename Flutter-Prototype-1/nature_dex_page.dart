class NatureDexPage extends StatefulWidget {
  @override
  _NatureDexPageState createState() => _NatureDexPageState();
}

class _NatureDexPageState extends State<NatureDexPage> {
  List<Map<String, dynamic>> capturedPlants = [
    {
      'name': 'Trillium',
      'type': 'Uncommon',
      'dateCaptured': 'Captured today',
      'image': 'trillium.jpg',
    },
    {
      'name': 'Black Eyed Susan',
      'type': 'Common',
      'dateCaptured': 'Captured yesterday',
      'image': 'black_eyed_susan.jpg',
    },
    {
      'name': 'Wild Bergamot',
      'type': 'Rare',
      'dateCaptured': 'Captured yesterday',
      'image': 'wild_bergamot.jpg',
    },
    {
      'name': 'Wild Bergamot',
      'type': 'Rare',
      'dateCaptured': 'Captured yesterday',
      'image': 'wild_bergamot_2.jpg',
    },
  ];

  List<Map<String, dynamic>> missingPlants = [
    {
      'name': 'Hepatica',
      'type': 'Uncommon',
      'image': 'hepatica.jpg',
    },
    {
      'name': 'Bloodroot',
      'type': 'Common',
      'image': 'bloodroot.jpg',
    },
    {
      'name': 'White Baneberry',
      'type': 'Rare',
      'image': 'white_baneberry.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NatureDex'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Wildflowers'),
                  onTap: () {
                    // Navigate to Wildflowers category
                  },
                ),
                ListTile(
                  title: Text('Trees'),
                  onTap: () {
                    // Navigate to Trees category
                  },
                ),
                ListTile(
                  title: Text('Shrubs'),
                  onTap: () {
                    // Navigate to Shrubs category
                  },
                ),
                ListTile(
                  title: Text('Ferns'),
                  onTap: () {
                    // Navigate to Ferns category
                  },
                ),
                ListTile(
                  title: Text('Arboreal'),
                  onTap: () {
                    // Navigate to Arboreal category
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Your recent captures',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: capturedPlants.length,
              itemBuilder: (context, index) {
                final plant = capturedPlants[index];
                return ListTile(
                  leading: Image.asset('assets/${plant['image']}', width: 50),
                  title: Text(plant['name']),
                  subtitle: Text(plant['type']),
                  onTap: () {
                    Navigator.pushNamed(context, '/plant-view', arguments: plant);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Missing species',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: missingPlants.length,
              itemBuilder: (context, index) {
                final plant = missingPlants[index];
                return ListTile(
                  leading: Image.asset('assets/${plant['image']}', width: 50),
                  title: Text(plant['name']),
                  subtitle: Text(plant['type']),
                );
              },
            ),
          ),
        ],
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