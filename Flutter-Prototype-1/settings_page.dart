class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Settings',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text('Change Password'),
              onTap: () {
                // Navigate to change password screen
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                // Log out functionality
              },
            ),
            SizedBox(height: 16),
            Text(
              'App Settings',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text('Privacy Settings'),
              onTap: () {
                // Navigate to privacy settings screen
              },
            ),
            ListTile(
              title: Text('Terms of Use'),
              onTap: () {
                // Navigate to terms of use screen
              },
            ),
          ],
        ),
      ),
    );
  }
}