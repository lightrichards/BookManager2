package com.ivan.service;


import com.ivan.dao.BookDAO;
import com.ivan.model.Book;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by admin on 12.02.2018.
 */
@Service
public class BookServiceImpl implements BookService {
    private BookDAO bookDAO;

    public BookDAO getBookDAO() {
        return bookDAO;
    }

    public void setBookDAO(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    @Transactional
    public void addBook(Book book) {
        this.bookDAO.addBook(book);

    }

    @Transactional
    public void updateBook(Book book) {
        this.bookDAO.updateBook(book);

    }

    @Transactional
    public void removeBook(int id) {
        this.bookDAO.removeBook(id);

    }

    @Transactional
    public Book getBookById(int id) {
        return this.bookDAO.getBookById(id);
    }

    @Transactional
    public List<Book> listBooks() {
        return this.bookDAO.listBooks();
    }


}
