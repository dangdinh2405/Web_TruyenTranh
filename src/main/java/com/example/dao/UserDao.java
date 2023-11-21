package com.example.dao;
import com.example.model.User;

import java.util.List;

public interface UserDao {
    User getUserByUsername(String username);

    void saveUser(String username, String password);
    void updateUserPassword(String username, String newPassword);

    void deleteUser(String usernameToDelete);

    void deleteUserID(String userId);

    User getUserByID(String id);

    List<User> getAllUser();
}
