package com.ivan.dao;


import com.ivan.model.Book;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;


/**
 * Created by admin on 12.02.2018.
 */
public class BookDAOImpl implements BookDAO{
    private static final Logger logger = Logger.getRootLogger();
    private SessionFactory sessionFactory;

    public void addBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
        logger.info("book was added");

    }

    public void updateBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
        logger.info("book was updated");

    }

    public void removeBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class,id);
        book.getTitle();
        book.getAuthor();
        book.getPrice();

        if(book != null){
            session.delete(book);
            logger.info("book was deleted");
        }

    }

    public Book getBookById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class,id);
        book.getTitle();
        book.getAuthor();
        book.getPrice();
        logger.info("book was added");

        return book;
    }

    public List<Book> listBooks() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> books = session.createQuery("FROM Book").list();

        return books;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
