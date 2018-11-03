package br.com.corp.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDAO<T, ID extends Serializable> {

    T findById(ID id, boolean lock);

    List<T> findAll();

    List<T> findByExample(T exampleInstance);

    T makePersistent(T entity);

    void makeTransient(T entity);

    T insert(T entity);

    T update(T entity);

}
