package com.example.dao;

import com.example.model.Story;

import java.util.List;

public interface StoryDao {
    List<Story> getAllStories(String category);
}
