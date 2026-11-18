import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Profile
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 14, 138, 226),
                  Color.fromARGB(255, 29, 130, 208),
                  Color.fromARGB(255, 0, 150, 170),
                ],
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),

                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 45,
                    color: Color.fromARGB(255, 0, 190, 180),
                  ),
                ),

                SizedBox(width: 12),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama Pengguna",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "Profilku",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Informasi Profile
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "YOUR EMAIL",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "user@gmail.com",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "YOUR PASSWORD",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "••••••••••",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "YOUR PHONE",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "+62 812 3456 7890",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "CITY, STATE",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "Kudus, Jawa Tengah",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "COUNTRY",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "Indonesia",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}