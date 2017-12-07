package ks.individual.lab.project.service.implementation;

import ks.individual.lab.project.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ks.individual.lab.project.dao.PurchaseDao;
import ks.individual.lab.project.dao.UserDao;
import ks.individual.lab.project.entity.Commodity;
import ks.individual.lab.project.entity.Purchase;

import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Service
public class PurchaseServiceImpl implements PurchaseService {

    private final PurchaseDao purchaseDao;

    private final UserDao userDao;

    @Autowired
    public PurchaseServiceImpl(PurchaseDao purchaseDao, UserDao userDao) {
        this.purchaseDao = purchaseDao;
        this.userDao = userDao;
    }

    @Override
    public void add(double amount, String userLogin, List<Commodity> commodityList) {
        purchaseDao.add(new Purchase(amount, userDao.findByLogin(userLogin),commodityList));
    }

    @Override
    public void edit(int id, double amount, String userLogin, List<Commodity> commodityList) {
    }

    @Override
    public void delete(int id) {
        purchaseDao.delete(id);
    }

    @Override
    public Purchase findById(int id) {
        return purchaseDao.findById(id);
    }

    @Override
    public List<Purchase> findAll() {
        return purchaseDao.findAll();
    }
}
