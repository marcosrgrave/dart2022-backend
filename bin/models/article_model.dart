class ArticleModel {
  final int id;
  final String title;
  final String content;
  final String image;
  final DateTime postDate;
  final DateTime? putDate;

  ArticleModel(
    this.id,
    this.title,
    this.content,
    this.image,
    this.postDate,
    this.putDate,
  );
}
