package org.orderking.erp.entity;

import lombok.Data;

@Data
public abstract class Person {
    protected String name;
    protected int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

}
