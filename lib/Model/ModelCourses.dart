class ModelCourses{
  late String _course ;
  late String _content ;
  late int _hours ;
  late int _id;


  ModelCourses(dynamic obj)
  {
    _id =obj['id'];
    _course =obj['course'];
    _content =obj['content'];
    _hours =obj['hours'];

  }
  ModelCourses.forMap(Map<String ,dynamic> data)
  {
    _id =data['id'];
    _course =data['course'];
    _content =data['content'];
    _hours =data['hours'];
  }

  Map<String ,dynamic> toMap() => { 'id' : _id ,'course' :_course , 'content' : _content , 'hours' : _hours };

  String get course => _course ;
  String get content => _content ;
  int get hours => _hours ;
  int get id => _id ;




}