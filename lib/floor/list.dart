import 'package:all_persistences_flutter/Floor/add.dart';
import 'package:all_persistences_flutter/Floor/models/Book.dart';
import 'package:flutter/material.dart';

//import 'daos/BookDao.dart';

class ListFloorWidget extends StatefulWidget {
  const ListFloorWidget({Key? key}) : super(key: key);

  final title = const Text("Floor - Lista Pessoas");

  @override
  ListFloorWidgetState createState() => ListFloorWidgetState();
}

class ListFloorWidgetState extends State<ListFloorWidget> {
  List<Book> Books = [];
  //late BookDao dao;

  @override
  void initState(){
    super.initState();
    //dao = BookDao();
    //getAllBooks();
  }

  // getAllBooks() async {
  //   final result = await dao.readAll();
  //   setState(() {
  //     Books = result;
  //   });
  // }

  // insertBook(Book Book) async {
  //   final id = await dao.insertBook(Book);
  //   if(id > 0){
  //     setState(() {
  //       Book.id = id;
  //       Books.add(Book);
  //     });
  //   }
  // }

  // deleteBook(int index) async {
  //   Book p = Books[index];
  //   if(p.id != null){
  //     await dao.deleteBook(p.id!);
  //     setState(() {
  //       Books.removeAt(index);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: widget.title, actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddBook()))
                    .then((Book){
                      setState(() {
                        //insertBook(Book);
                      });
                    });
              },
              icon: Icon(Icons.add))
        ]),
        body: ListView.separated(
          itemBuilder: (context, index) => buildListItem(index), 
          separatorBuilder: (context, index) => const Divider(height: 1), 
          itemCount: Books.length));
  }

  Widget buildListItem(int index) {
    Book p = Books[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          child: ListTile(
            leading: Text(p.id != null ? p.id.toString() : "-1"),
            title: Text(p.name),
            subtitle: Text(p.author),
            onLongPress: (){

            },
          )));
  }
}
