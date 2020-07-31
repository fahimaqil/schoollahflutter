class Scholarship {
  String imageUrl;
  String name;
  String sponsor;
  String deadLines;
  String category;
  String type;
  String description;

  Scholarship({
    this.imageUrl,
    this.name,
    this.sponsor,
    this.deadLines,
    this.category,
    this.type,
    this.description,
  });
}

final List<Scholarship> scholar = [
  Scholarship(
      imageUrl: 'images/bnm.png',
      sponsor: 'Bank Negara Malaysia',
      name: 'Kijang Award Scholarship',
      deadLines: '8 April 2020',
      category: 'Pre University',
      description: 'Apply!'),
  Scholarship(
      imageUrl: 'images/yk.png',
      sponsor: 'Khazanah',
      name: 'Yayasan Khazanah',
      deadLines: '5 March 2020',
      category: 'Pre University',
      description: 'Apply!'),
  Scholarship(
      imageUrl: 'images/tnb.png',
      sponsor: 'TNB',
      name: 'Yayasan Tenaga Nasional',
      deadLines: '5 March 2020',
      category: 'Undergraduate',
      description: 'Apply!'),
  Scholarship(
      imageUrl: 'images/tmm.png',
      sponsor: 'Telekom Malaysia',
      name: 'Yayasan Telekom Malaysia Scholarship Award',
      deadLines: '9 February 2019',
      category: 'Postgraduate',
      description: 'Apply!'),
  Scholarship(
      imageUrl: 'images/3.png',
      sponsor: 'TNB',
      name: 'Yayasan Tenaga Nasional',
      deadLines: '5 March 2020',
      category: 'Undergraduate',
      description: 'Apply!'),
];
