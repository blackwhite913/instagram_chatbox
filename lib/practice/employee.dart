class Employee{
  int id;
  String name;
  String phone;
  Employee(this.name,this.phone);


  Map<String,dynamic> toMap(){
    var map = Map<String,dynamic>();
    if(id!=null){
      map['id']=id;
    }
    map['name']=name;
    map['phone']=phone;
    return map;
  }

  Employee.fromMapObject(Map<String,dynamic> map){
    this.id= map['id'];
    this.name = map['name'];
    this.phone= map['phone'];
  }
}