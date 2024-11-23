import 'package:flutter/material.dart';
import 'package:futuresg10/models/person_model.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  late Future<PersonModel> userFuture;

  // late PersonModel persona;

  @override
  void initState() {
    // persona = await fetchUser();
    super.initState();
    userFuture = fetchUser();
  }

  Future<PersonModel> fetchUser() async {
    await Future.delayed(
        Duration(seconds: 5)); // Simula la espera de 5 segundos
    return PersonModel(
      name: "Elliot Thompson",
      jobTitle: "Developer",
      likes: 34,
      followers: 120,
      rating: 85,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            Container(
              height: screenHeigth / 4,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Color(0xff74839D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 56, left: 16, right: 16),
              child: FutureBuilder(
                future: userFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (snapshot.hasData) {
                    final user = snapshot.data!;
                    return Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: screenHeigth / 4,
                        width: screenWidth - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 5),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                      width: screenWidth / 3,
                                      height: screenWidth / 3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        user.name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        user.jobTitle,
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        width: screenWidth / 2.5,
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.blue[50],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text("Likes"),
                                                Text(
                                                  "${user.likes}",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text("Followers"),
                                                Text(
                                                  "${user.followers}",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text("Rating"),
                                                Text(
                                                  "${user.rating}",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding:
                                            EdgeInsetsDirectional.symmetric(
                                                vertical: 10),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black26),
                                        ),
                                        child: Text("Chat"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding:
                                            EdgeInsetsDirectional.symmetric(
                                                vertical: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          "Follow",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Center(child: Text("No data available"));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
