package com.mtcoding.test01.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

@Repository
public class SuperRepository {

    @Autowired
    private EntityManager em;

    public void save(String name, int price, int qty){
        Query query = em.createNativeQuery("insert into super_tb(name, price, qty) values (:name, :price, :qty)");
        query.setParameter("name", name);
        query.setParameter("price", price);
        query.setParameter("qty", qty);
    }

    public List<Super> findAll() {
        Query query = em.createNativeQuery("select * from super_tb", Super.class);
        List<Super> superList = query.getResultList();
        return superList;
    }
}
