
package com.example.service;

import com.example.model.User;

public interface UserService {
    boolean isUserExists(String username);

    boolean authenticateUser(String username, String password);
    User getUserByUsername(String username);
    void saveUser(String username, String password);

    void updateUserPassword(String username, String password);

    void deleteUser(String usernameToDelete);
}
