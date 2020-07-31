class Library {
  String imageUrl;
  String name;
  String author;
  String date;
  String category;

  Library({
    this.imageUrl,
    this.name,
    this.author,
    this.date,
    this.category,
  });
}

final List<Library> articles = [
  Library(
    imageUrl: 'images/1.JPG',
    author: 'Michael Ismail',
    name:
        'Study Tips Untuk Pelajar SPM Study Tips Untuk Pelajar SPM Study Tips Untuk Pelajar SPM Study Tips Untuk Pelajar SPM Study Tips Untuk Pelajar SPM  ',
    date: '20 September 2020',
    category: 'SPM',
  ),
  Library(
    imageUrl: 'images/2.png',
    author: 'Nurul Ain',
    name: 'Bergiat Aktif Di University Bergiat Aktif Di University',
    date: '5 March 2020',
    category: 'University',
  ),
  Library(
    imageUrl: 'images/3.png',
    author: 'Fahim Aqil',
    name: 'Scholarshop Hunting Tips',
    date: '5 March 2020',
    category: 'Study',
  ),
  Library(
    imageUrl: 'images/4.JPG',
    author: 'Silva Raj',
    name: 'Seribu Satu Cara Untuk Berjaya',
    date: '9 February 2019',
    category: 'Scholarship',
  ),
  Library(
    imageUrl: 'images/student1.png',
    author: 'Fahim Aqil',
    name: 'Scholarshop Hunting Tips',
    date: '5 March 2020',
    category: 'Study',
  ),
];
