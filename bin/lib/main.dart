import 'book.dart';

void main(){
   Book book1 = Book(title: 'himo', author: 'Homayn Ahmed', publicationYear: 1998);
   Book book2 = Book(title: 'Project Navula', author: 'MD. Jafor ikbal', publicationYear: 1898 );
   Book book3 = Book(title: 'Boboner baba', author: 'MD . Jafor Ikbal', publicationYear: 1899,);
   book1.read(101);
   book2.read(125);
   book3.read(268);

   List<Book> books = [book1, book2, book3];

   for(Book book in books){
      print(
          'book${books.indexOf(book)+1}:\n'
          '----------------------------------------------\n'
             'Title: ${book.getTitle()}\n'
             'Author:${book.getAuthor()}\n'
             'Publication Year: ${book.getPublicationYear()}\n'
             'Read Pages: ${book.getReadPages()}\n'
             'Age of book: ${book.getBookAge()}\n'
          '----------------------------------------------\n'
      );
   }

   print('Total number of books : ${Book.totalBooks}');
}

