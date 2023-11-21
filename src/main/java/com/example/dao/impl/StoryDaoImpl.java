package com.example.dao.impl;

import com.example.dao.StoryDao;
import com.example.model.Story;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.util.List;

@Service
public class StoryDaoImpl implements StoryDao {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public StoryDaoImpl(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Story> getAllStories(String category){
        String sql = "SELECT * FROM category WHERE TheLoai = ?";
        List<Story> stories = jdbcTemplate.query(sql, new Object[]{category}, (resultSet, i) -> {
            Story story = new Story();
            story.setId(resultSet.getString("Id"));
            story.setTitle(resultSet.getString("TenTacPham"));
            story.setAuthor(resultSet.getString("TacGia"));
            story.setUrl(resultSet.getString(("Link")));
            story.setImage(resultSet.getString("HinhAnh"));
            return story;
        });
        return stories;
    }
}


