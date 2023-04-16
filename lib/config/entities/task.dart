import 'dart:ffi';

class Task{
  final String title;
  final String? description;
  final Bool status;

  Task({
    required this.title, 
    required this.description, 
    required this.status
  });
}