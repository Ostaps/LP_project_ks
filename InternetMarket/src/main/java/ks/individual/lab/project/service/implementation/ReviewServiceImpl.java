package ks.individual.lab.project.service.implementation;

import ks.individual.lab.project.dao.ReviewDao;
import ks.individual.lab.project.dao.UserDao;
import ks.individual.lab.project.entity.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ks.individual.lab.project.service.ReviewsService;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Service
public class ReviewServiceImpl implements ReviewsService {

    private final ReviewDao reviewDao;
    private final UserDao userDao;

    @Autowired
    public ReviewServiceImpl(ReviewDao reviewDao, UserDao userDao) {
        this.reviewDao = reviewDao;
        this.userDao = userDao;
    }

    @Override
    public void add(String text, String userLogin) {
        reviewDao.add(new Review(text, userDao.findByLogin(userLogin)));
    }

    @Override
    public void edit(int id, String text) {
        Review review = reviewDao.findById(id);
        review.setText(text);
        reviewDao.edit(review);
    }

    @Override
    public void delete(int id) {
        reviewDao.delete(id);
    }

    @Override
    public Review findById(int id) {
        return reviewDao.findById(id);
    }

    @Override
    public List<Review> findAll() {
        return reviewDao.findAll();
    }
}
