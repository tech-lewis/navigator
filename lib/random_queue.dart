import 'dart:collection';
import 'dart:math';
import 'package:navigator/position.dart';

///
/// @Description: 随机队列（入队：队头或队尾，出队：队头或队尾）
/// @Author: 沫小亮。
/// @CreateDate: 2020/4/13  12:18
///

class RandomQueue {
  LinkedList<Position> _queue;

  RandomQueue() {
    _queue = new LinkedList();
  }

  //往随机队列里添加一个元素
  void addRandom(Position position) {
    if (Random().nextInt(100) < 50) {
      //从头部添加
      _queue.addFirst(position);
    } else {
      //从尾部添加
      _queue.add(position);
    }
  }

  //返回随机队列中的一个元素
  Position removeRandom() {
    if (_queue.length == 0) {
      throw "数组元素为空";
    }
    if (Random().nextInt(100) < 50) {
      //从头部移除
      Position position = _queue.first;
      _queue.remove(position);
      return position;
    } else {
      //从尾部移除
      Position position = _queue.last;
      _queue.remove(position);
      return position;
    }
  }

  //返回随机队列元素数量
  int getSize() {
    return _queue.length;
  }

  //判断随机队列是否为空
  bool isEmpty() {
    return _queue.length == 0;
  }
}
