package com.example.service.impl;

import com.example.dao.UserDao;
import com.example.model.Story;
import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public boolean isUserExists(String username) {
        return userDao.getUserByUsername(username) != null;
    }

    @Override
    public boolean authenticateUser(String username, String password) {
        User user = userDao.getUserByUsername(username);
        return user != null && password.equals(user.getPassword());
    }

    @Override
    public User getUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }

    @Override
    public void saveUser(String username, String password) {
        userDao.saveUser(username,password);
    }

    @Override
    public void updateUserPassword(String username, String newPassword) {userDao.updateUserPassword(username,newPassword);}

    @Override
    public void deleteUser(String usernameToDelete){userDao.deleteUser(usernameToDelete);}

    @Override
    public void deleteUserID(String userId){userDao.deleteUserID(userId);}

    @Override
    public List<User> getAllUser(){
        return userDao.getAllUser();
    }

    @Override
    public User getUserByID(String id){return userDao.getUserByID(id);}
}
