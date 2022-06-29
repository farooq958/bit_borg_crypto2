import 'package:flutter/cupertino.dart';

class newslistmodel{


  String? title;
  newslistmodel({required this.title});

}
List<newslistmodel> getlist()
{
  List<newslistmodel> newslist = [];
  newslist.add(newslistmodel(title: 'All'));
  newslist.add(newslistmodel(title: 'Favorite Coins'));
  newslist.add(newslistmodel(title: 'Popular Events'));
  newslist.add(newslistmodel(title: 'Neutral'));

return newslist;
}