package com.example.dao.impl;

import com.example.dao.UserDao;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public UserDaoImpl(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public User getUserByUsername(String username) {
        String sql = "SELECT * FROM account WHERE username = ?";
        List<User> users = jdbcTemplate.query(sql, new Object[]{username}, (resultSet, i) -> {
            User user = new User();
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            return user;
        });

        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public void saveUser(String username, String password) {
        String sql = "INSERT INTO account (username, password) VALUES (?, ?)";
        jdbcTemplate.update(sql, username, password);
    }

    @Override
    public void updateUserPassword(String username, String newPassword) {
        String sql = "UPDATE account SET password = ? WHERE username = ?";
        jdbcTemplate.update(sql, newPassword, username);
    }

    @Override
    public void deleteUser(String usernameToDelete){
        String sql = "DELETE FROM account WHERE username = ?";
        jdbcTemplate.update(sql,usernameToDelete);
    }

    @Override
    public void deleteUserID(String userId){
        String sql = "DELETE FROM account WHERE ID = ?";
        jdbcTemplate.update(sql,userId);
    }

    @Override
    public List<User> getAllUser(){
        String sql = "SELECT * FROM account";
        List<User> listuser = jdbcTemplate.query(sql, new Object[]{}, (resultSet, i) -> {
            User user = new User();
            user.setId(resultSet.getString("ID"));
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            return user;
        });
        return listuser;
    }

    @Override
    public User getUserByID(String id){
        String sql = "SELECT * FROM account WHERE ID = ?";
        List<User> users = jdbcTemplate.query(sql, new Object[]{id}, (resultSet, i) -> {
            User user = new User();
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            return user;
        });

        return users.isEmpty() ? null : users.get(0);
    }

}
