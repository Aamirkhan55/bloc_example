import 'package:flutter/material.dart';

@immutable
abstract class CounterEvent {}

class IncrementCounterEvents extends CounterEvent {

}

class DecrementCounterEvents extends CounterEvent {

}