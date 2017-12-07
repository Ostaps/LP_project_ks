package ks.individual.lab.project.service;

import ks.individual.lab.project.entity.Review;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
public interface ReviewsService {

    void add(String text, String userLogin);

    void edit(int id, String text);

    void delete(int id);

    Review findById(int id);

    List<Review> findAll();
}
