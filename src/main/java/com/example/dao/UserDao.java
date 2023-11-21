package com.example.dao;
import com.example.model.User;

public interface UserDao {
    User getUserByUsername(String username);

    void saveUser(String username, String password);
    void updateUserPassword(String username, String newPassword);

    void deleteUser(String usernameToDelete);
}
