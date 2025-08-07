import 'package:flutter/foundation.dart';
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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFC0FF00),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFC0FF00),
              ),
              child: Row(
                children: [
                   SizedBox(width: 10,),
                  Image.asset('assets/images/mafia.jpeg',
                  height: 60,
                    width: 60,
                  ),
                  const SizedBox(width: 10,),
                  Text('Mafi\nMushkil',style: TextStyle(fontSize: 25,fontWeight:
                  FontWeight.bold,color: Colors.black),),
                  const SizedBox(width: 130,),
                  IconButton(
                  icon:Icon(Icons.menu),
                onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)
                    => MenueScreen()),
                    );
                }
            )
                  
                ],
              ),
            ),
            Container(
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.search_rounded,color: Colors.grey,size: 30,),
                  const SizedBox(width: 5,),
                  Text('I want to hire a...',style: TextStyle(fontSize: 20,
                  color:Colors.grey,),)
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Services',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
              color: Colors.black,
              ),),
            ),
            const SizedBox(height: 5,),
            Padding(
          padding: EdgeInsets.all(12),
              child: Wrap(
             spacing: 30,
                runSpacing: 20,
                children: [
                  CategoryIcon(title:'Cleaning',imagePath:'assets/images/cleaning.jpeg'),
                  CategoryIcon(title:'Repairing',imagePath:'assets/images/repairing.jpeg'),
                  CategoryIcon(title:'Electrician',imagePath:'assets/images/electrician.jpeg'),
                  CategoryIcon(title:'Carpenter',imagePath:'assets/images/carpenter.jpeg'),
                  CategoryIcon(title:'Repairing',imagePath:'assets/images/repairing.jpeg'),
                  CategoryIcon(title:'Electrician',imagePath:'assets/images/electrician.jpeg'),
                  CategoryIcon(title:'Carpenter',imagePath:'assets/images/carpenter.jpeg'),
                  CategoryIcon(title:'Repairing',imagePath:'assets/images/repairing.jpeg'),
                  CategoryIcon(title:'More',imagePath:'assets/images/more1.jpeg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CategoryIcon extends StatelessWidget {
  final String title;
  final String imagePath;
  const CategoryIcon({required this.title, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    );
  }
}
class MenueScreen extends StatefulWidget {
  const MenueScreen({super.key});

  @override
  State<MenueScreen> createState() => _MenueScreenState();
}

class _MenueScreenState extends State<MenueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Mafi Mushkil',style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold,fontSize: 25),),
            Icon(Icons.close),
          ],
        ),
      ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                  ),
                  ListTile(
                    leading: Icon(Icons.person,color: Colors.grey,),
                    title: Text('My Profile',),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,
                    size: 20,),
                    onTap: () {
                      // Handle My Profile tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.contact_mail,color: Colors.grey,),
                    title: Text('Contact us',),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey
                      ,size: 20,),
                    onTap: () {
                      // Handle Contact us tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.work,color: Colors.grey,),
                    title: Text('Become a worker'),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,
                    size: 20,),
                    onTap: () {
                      // Handle Become a worker tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.business,color: Colors.grey,),
                    title: Text('Register a company'),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey
                      ,size: 20,),
                    onTap: () {
                      // Handle Register a company tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.share,color: Colors.grey,),
                    title: Text('Share'),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey
                      ,size: 20,),
                    onTap: () {
                      // Handle Share tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.star,color: Colors.grey,),
                    title: Text('Rate'),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey
                      ,size: 20,),
                    onTap: () {
                      // Handle Rate tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout,color: Colors.grey,),
                    title: Text('Logout'),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey
                      ,size: 20,),
                    onTap: () {
                      // Handle Logout tap
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset('assets/images/pixel.jpeg',height: 15,
                      width:15,),
                  SizedBox(width: 10,),
                  Text('Pixel io\nTechnologies',style: TextStyle(color: Colors.grey,
                  fontSize: 10),),
                  SizedBox(width: 150,),
                  Text('Version 1.0',style: TextStyle(color:Colors.grey),),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
