class TodoResponse {
  int id;
  String name;
  String time;
  String category;
  bool isComplete;

  TodoResponse(
      {this.id, this.name, this.time, this.category, this.isComplete = false});

  TodoResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    time = json['time'];
    category = json['category'];
    isComplete = json['is_complete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['time'] = this.time;
    data['category'] = this.category;
    data['is_complete'] = this.isComplete;
    return data;
  }
}
