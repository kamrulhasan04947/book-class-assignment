class Book{
  // properties declaration
  String _title = '';
  String _author = '';
  int _publicationYear = 0;
  int _pagesRead = 0;
  // tracking Book instance
  static int totalBooks = 0;
  Book({required String title, required String author, required int publicationYear}){
    _title = title;
    _author = author;
    _publicationYear = publicationYear;
    // tracking Book instance
    totalBooks += 1;
  }

  // Methods those are need
  void read(int pages){
    _pagesRead = _pagesRead + pages;
  }

  int getReadPages(){
    return _pagesRead;
  }

  String getTitle(){
    return _title;
  }

  String getAuthor(){
    return _author;
  }

  int getPublicationYear(){
    return _publicationYear;
  }

  int getBookAge(){
    DateTime currentDate = DateTime.now();
    int currentYear = currentDate.year;
    return currentYear - _publicationYear;
  }

}