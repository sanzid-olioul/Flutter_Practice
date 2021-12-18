class ImageModel {
  late int id;
  late String url;
  late String title;

  ImageModel(Map<String, dynamic> jsonData) {
    id = jsonData['id'];
    url = jsonData['url'];
    title = jsonData['title'];
  }
}
