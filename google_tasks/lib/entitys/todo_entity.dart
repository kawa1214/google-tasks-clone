import 'package:cloud_firestore/cloud_firestore.dart';

class TodoEntity {
  final String id;
  final String title;
  final String text;
  final bool isComplete;

  TodoEntity({this.id, this.title, this.text, this.isComplete});

  factory TodoEntity.fromDocumentSnapshot(DocumentSnapshot doc) => TodoEntity(
        id: doc.documentID ?? '',
        title: doc['title'] ?? '',
        text: doc['text'] ?? '',
        isComplete: doc['isComplete'] ?? false,
      );
}
