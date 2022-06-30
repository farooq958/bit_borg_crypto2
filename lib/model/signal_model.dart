class signallist{


  String? title;
  signallist({required this.title});

}
List<signallist> getlist1()
{
  List<signallist> Signallistt = [];
  Signallistt.add(signallist(title: 'All'));
  Signallistt.add(signallist(title: 'Hold'));
  Signallistt.add(signallist(title: 'Scalp'));
  Signallistt.add(signallist(title: 'Result F/S'));
  Signallistt.add(signallist(title: 'Free'));
  return Signallistt;
}