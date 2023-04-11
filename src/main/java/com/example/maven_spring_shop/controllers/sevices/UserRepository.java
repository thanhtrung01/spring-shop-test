package com.example.maven_spring_shop.controllers.sevices;

import org.springframework.data.repository.CrudRepository;

import com.example.maven_spring_shop.models.User;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    User findByEmail(String email);
}