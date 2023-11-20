import 'package:latihan_responsi/models/detail_blog.dart';
import 'package:latihan_responsi/models/detail_news.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:latihan_responsi/models/detail_reports.dart';

class ApiSource {
  static const _News =
      'https://api.spaceflightnewsapi.net/v4/articles/?format=json';

  static const _Blogs =
      'https://api.spaceflightnewsapi.net/v4/blogs/?format=json';

  static const _Reports =
      'https://api.spaceflightnewsapi.net/v4/reports/?format=json';

  Future<List<Results>> getNews() async {
    final response = await http.get(Uri.parse(_News));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      print(decodeData);
      return decodeData.map((movie) => Results.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<List<Blogs>> getBlogs() async {
    final response = await http.get(Uri.parse(_Blogs));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      print(decodeData);
      return decodeData.map((movie) => Blogs.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<List<Report>> getReports() async {
    final response = await http.get(Uri.parse(_Reports));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      print(decodeData);
      return decodeData.map((movie) => Report.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}