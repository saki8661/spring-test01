package com.mtcoding.test01.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter@Setter
@Table(name = "suoer_tb")
@Entity
public class Super {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private Integer price;
    private Integer qty;
}
