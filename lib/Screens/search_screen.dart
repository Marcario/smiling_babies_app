// lib/Screens/SearchScreen.dart

import 'package:flutter/material.dart';

class searchscreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<searchscreen> {
  TextEditingController _searchController = TextEditingController();
  List<SearchResult> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            SizedBox(height: 16.0),
            _buildSearchResults(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search...',
        suffixIcon: IconButton(
        icon: Image.asset('assets/icons/search-icon.png'),
          onPressed: () {
            // Perform search and update results
            _performSearch();
          },
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_searchResults[index].name),
              subtitle: Text(_searchResults[index].description),
              leading: Image.asset(_searchResults[index].imagePath),
              // You can customize how each search result is displayed
            ),
          );
        },
      ),
    );
  }

  void _performSearch() {
    // Simulate search functionality
    String query = _searchController.text;
    // You can replace this with your actual search logic
    List<SearchResult> results = _mockSearch(query);

    setState(() {
      _searchResults = results;
    });
  }

  
  List<SearchResult> _mockSearch(String query) {
    // Simulate search results
    return List.generate(
      5,
      (index) => SearchResult(
        name: 'Result ${index + 1} for "$query"',
        description: 'Description for Result ${index + 1}',
        imagePath: 'assets/images/baby sac${index + 1}.png',
      ),
    );
  }
}

class SearchResult {
  final String name;
  final String description;
  final String imagePath;

  SearchResult({
    required this.name,
    required this.description,
    required this.imagePath,
  });
}
