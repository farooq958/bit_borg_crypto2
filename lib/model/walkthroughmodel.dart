class walkthroughmodel{

  String? title;
 // String? subtitle;
  String? image;

  walkthroughmodel({this.title,this.image});
}

List<walkthroughmodel> getListWalkThrough(){
  List<walkthroughmodel> list = [];

  list.add(walkthroughmodel(title : 'Unlock all Features',image : 'assets/images/Account-rafiki.png'));
  list.add(walkthroughmodel(title : 'All Important News',image : 'assets/images/Subscriptions-rafiki.png'));
  list.add(walkthroughmodel(title : 'Trading Signals',image : 'assets/images/Charts-rafiki.png'));

  return list;
}