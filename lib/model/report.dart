

class Report{
  String section;
  String title;
  String purpose;
  String instruments;
  String descriptions;
  List<String> content;
  List<String> steps;
  List<String> rawStatics;
  List<String> process;
  List<String> discussion;

  Report({
    this.section, this.title, this.purpose, this.instruments, this.descriptions, this.content,
    this.steps, this.rawStatics, this.process, this.discussion});

  Report.fromJson(Map<String, dynamic> json){
    section = json['section'];
    title = json['title'];
    purpose = json['purpose'];
    instruments = json['instruments'];
    descriptions = json['description'];
    if (json['content'] != null) {
      content = new List<String>();
      json['content'].forEach((v) {
        content.add(v['image']);
      });
    }
    if (json['steps'] != null) {
      steps = new List<String>();
      json['steps'].forEach((v) {
        steps.add(v['image']);
      });
    }
    if (json['raw_statics'] != null) {
      rawStatics = new List<String>();
      json['raw_statics'].forEach((v) {
        rawStatics.add(v['image']);
      });
    }
    if (json['process'] != null) {
      process = new List<String>();
      json['process'].forEach((v) {
        process.add(v['image']);
      });
    }
    if (json['discussion'] != null) {
      discussion = new List<String>();
      json['discussion'].forEach((v) {
        discussion.add(v['image']);
      });
    }
  }
}

class ReportOutline{
  String section;
  String title;
  int id;

  ReportOutline({this.section, this.title, this.id});

  ReportOutline.fromMap(Map<String, dynamic> map){
    section = map['section'];
    title = map['title'];
    id = map['id'];
  }
}