package com.ivan.service;



import com.ivan.model.Book;

import java.util.List;

/**
 * Created by admin on 12.02.2018.
 */
public interface BookService {

    void addBook(Book book);

    void updateBook(Book book);

    void removeBook(int id);

    Book getBookById(int id);

    List<Book> listBooks();
}
