import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  List<Map> Store = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPh2a77H0N20J5HvePGmw_Xfq4Y-grapdN9g&usqp=CAU.png',
      'name': 'PUBG MOBILE',
      'Rating': '4.5',
      'icon': Icon(
        Icons.star,
        size: 24,
      )
    },
    {
      'image':
          'https://images.firstpost.com/wp-content/uploads/2023/02/tomandherry.jpg',
      'name': 'Tom And Jerry',
      'Rating': '4.3',
      'icon': Icon(
        Icons.star,
        size: 14,
      )
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm81XoZa9dFFAFPY-LjxgJ-XAj-KeySicSvw&usqp=CAU',
      'name': 'Angry Birds',
      'Rating': '4.2',
      'icon': Icon(
        Icons.star,
        size: 20,
      )
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAFM8ab6gywfTuETjWnbejEMEgewTVlGo5SA&usqp=CAU',
      'name': 'PES 2023',
      'Rating': '5.0',
      'icon': Icon(
        Icons.star,
        size: 27,
      )
    }
  ];
  List<Map> Recomended = [
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlcC9fijUmgwxnc5BdNRTSXuOVTZvpw-4bUQ&usqp=CAU', 'name': 'FIFA 2023', 'rating': '5.0'
    },
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1XC8xT1CK6V6ffn1tRWDrW2B-XSITDEz1tQ&usqp=CAU', 'name': 'FAr CRY 6', 'rating': '4.3'
    },
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoqDnzHIDAU29VhCX8Jw1mEenYg4INwNJDhg&usqp=CAU', 'name': 'LUDO KING', 'rating': '4.6'
    },
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQhMmFwiAXMJJf8KJCLg_8SLD66sDVF3seCA&usqp=CAU', 'name': 'MOTO GP 23', 'rating': '4.3'
    },
  ];
  List<Map>Apps=[{'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlL73FSSFyNmDAcRgYgaHUT2YLCaiGYkmh_A&usqp=CAU','name':'Amazon','rating':'4.2'},
    {'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDYAeTwZD2Pow9lBLL1pmbqgQc_SLkI08xkQ&usqp=CAU','name':'FlipKart','rating':'4.2'},
    {'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX1mnQ8pmcveQSEKevvEYKOwYP8vbiy1PMUA&usqp=CAU','name':'Myntra','rating':'4.2'},
    {'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-XvS8EEuyK7q4NvGHGNU4gFJaMKkGslrGJw&usqp=CAU','name':'Bank','rating':'4.2'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      ElevatedButton(onPressed: ()async{
       DateTime? selectedDate=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1900,1,1), lastDate: DateTime(2024));
       print(selectedDate);
      }, child: Text('date')),
      SizedBox(
        height: 200,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 150,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(Store[index]['image']),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      Store[index]['name'],
                      style: TextStyle(fontSize: 20),
                    )),
                    Text(Store![index]['Rating']),
                    Store[index]['icon'],
                  ],
                ),
              );
            }),
      ),
      Text('Top Rated',style: TextStyle(fontSize: 20),),SizedBox(),Icon(Icons.arrow_circle_right_outlined),
      SizedBox(
        height: 200,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        height: 100,
                        width: 200,
                        child: CircleAvatar(backgroundImage: NetworkImage(Recomended[index]['image'])),),
                    Text(
                      Recomended[index]['name'],
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      Recomended[index]['rating'],
                      style: TextStyle(fontSize: 20),
                    ),Icon(Icons.star_border,size: 28,)
                  ],
                ),
              );
            }),

      ),Text('Helo'),
      SizedBox(
        height: 200,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        height: 100,
                        width: 200,
                        child: Image(
                            image: NetworkImage(Apps[index]['image']))),
                    Text(
                      Apps[index]['name'],
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      Apps[index]['rating'],
                      style: TextStyle(fontSize: 20),
                    ),Icon(Icons.star_border,size: 28,)
                  ],
                ),
              );
            }),
      ),

    ]);
  }
}
