import 'package:dio/dio.dart';
import 'package:report_helper/model/report.dart';

class Service{
  static const String BASE_URL = "http://192.168.123.130:8000";
//  static const String BASE_URL = "http://192.168.43.82:8000";


  static Future<List<ReportOutline>> getReportList() async {
    Dio dio = Dio();
    Response response = await dio.get("$BASE_URL/report/");
    List<ReportOutline> reports = List<ReportOutline>();
    if(response.data == null)
      return Future.error('获取数据失败');
    List<dynamic> list = response.data;
    list.forEach((v) {
      reports.add(ReportOutline.fromMap(v));
    });
    return reports;
  }

  static Future<Report> getReport(int id) async {
    Dio dio = Dio();
    Response response = await dio.get("$BASE_URL/report/$id");
    Report report = Report();
    if(response.data == null)
      return Future.error('获取数据失败');
    report = Report.fromJson(response.data);
    return report;
  }
}