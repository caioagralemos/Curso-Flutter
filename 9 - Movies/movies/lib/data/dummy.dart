import 'package:flutter/material.dart';
import 'package:movies/models/category.dart';
import 'package:movies/models/movie.dart';

const categories = [
  Category(id: 'cat1', title: 'Comédia', color: Colors.amber, movies: [
    Movie(id: 'com1', title: 'Home Alone'),
    Movie(id: 'com2', title: 'No Hard Feelings'),
    Movie(id: 'com3', title: 'Até que a Sorte nos Separe'),
    Movie(id: 'com4', title: 'Até que a Sorte nos Separe 2'),
    Movie(id: 'com4', title: 'O Candidato Honesto'),
  ]),

  Category(id: 'cat2', title: 'Terror', color: Colors.red, movies: [
    Movie(id: 'com1', title: 'Home Alone'),
    Movie(id: 'com2', title: 'No Hard Feelings'),
    Movie(id: 'com3', title: 'Até que a Sorte nos Separe'),
    Movie(id: 'com4', title: 'Até que a Sorte nos Separe 2'),
    Movie(id: 'com4', title: 'O Candidato Honesto')
    ],),

  Category(id: 'cat3', title: 'Ação', color: Colors.indigo, movies: [
    Movie(id: 'com1', title: 'Missão Impossível'),
    Movie(id: 'com2', title: 'Mad Max'),
    Movie(id: 'com3', title: 'Os Incríveis'),
    Movie(id: 'com4', title: 'John Wick'),
    Movie(id: 'com4', title: '007 - Goldeneye'),
    ]),

  Category(id: 'cat4', title: 'Drama', color: Colors.cyan, movies: [
    Movie(id: 'com1', title: 'Titanic'),
    Movie(id: 'com2', title: 'A Dois Passos de Você'),
    Movie(id: 'com3', title: 'A Culpa é das Estrelas'),
    Movie(id: 'com4', title: 'Quando um Homem ama uma Mulher'),
    Movie(id: 'com4', title: 'Oppenheimer'),
  ]),

  Category(id: 'cat5', title: 'Superheróis', color: Colors.orange, movies: [
    Movie(id: 'com1', title: 'Avengers Endgame'),
    Movie(id: 'com2', title: 'The Flash'),
    Movie(id: 'com3', title: 'Shazam'),
    Movie(id: 'com4', title: 'Antman'),
    Movie(id: 'com4', title: 'Spiderman: Far from Home'),
    ]),

  Category(id: 'cat6', title: 'Musical', color: Colors.green, movies: [
    Movie(id: 'com1', title: 'Mamma Mia'),
    Movie(id: 'com2', title: 'The Lion King'),
    Movie(id: 'com3', title: 'Aladdin'),
    Movie(id: 'com4', title: 'The Phantom of the Opera'),
    Movie(id: 'com4', title: 'High School Musical'), 
    ]),
];
