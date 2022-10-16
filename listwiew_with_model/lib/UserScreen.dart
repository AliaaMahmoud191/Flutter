import 'package:flutter/material.dart';
class UserModel
{
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
});

}


class UserScreen extends StatelessWidget {
List<UserModel>users=[
  UserModel(
    id: 1,
    name: 'Aliaa',
    phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),
  UserModel(
      id: 1,
      name: 'Aliaa',
      phone: '01009835297'),


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Users'),
      ) ,
       body: ListView.separated(
           itemBuilder: (context,index)=>buildUserItem(users[index]),
           separatorBuilder: (context,index)=>Padding(
             padding: const EdgeInsetsDirectional.only(
                start :20.0),
             child: Container(
               height:1.0,
               width: double.infinity,
               color: Colors.grey[300],
             ),
           ),
           itemCount: users.length),


    );


  }
Widget buildUserItem(UserModel user) =>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 25,
        child:Text('${user.id}',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(width: 5,),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${user.name}',
            maxLines: 1,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('${user.phone}',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  ),
);
  //1.build item
 //2.build list
 //3.add item to list
}
