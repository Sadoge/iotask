import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iotask/src/features/dashboard/presentation/widgets/navigation_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Row(
          children: [
            StyledNavigationDrawer(),
            Expanded(
              child: Column(
                children: [
                  Header(),
                  Expanded(child: Content()),
                ],
              ),
            ),
          ],
        ),
      );
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'All Projects',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.sort),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.filter_alt),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Add New Project'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/no_projects.svg', // Add your placeholder image asset here
            height: 200,
          ),
          SizedBox(height: 20),
          Text(
            'Active projects not found',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Try to create new project or sign in to another workspace',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
