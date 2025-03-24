package ks.individual.lab.project.dao;

import ks.individual.lab.project.entity.Review;

import java.util.List;

public interface ReviewDao {

    void add(Review review);

    void edit(Review review);

    void delete(int id);

    Review findById(int id);

    List<Review> findAll();
}
