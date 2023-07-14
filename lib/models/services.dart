import 'dart:html';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:sand/models/tasks.dart';
import 'package:sand/models/username.dart';
class IsarDatabase
{
  late Future<Isar> db;
  IsarDatabase(){
    db = openDB();
  }
  Future<Isar> openDB() async {
  if(Isar.instanceNames.isEmpty){
    return Isar.open([TasksSchema,UsernameSchema],inspector: true, directory: '');
  }
  return Future.value(Isar.getInstance());
}}