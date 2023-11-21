package com.example.service;

import com.example.model.Story;

import java.util.List;

public interface StoryService {
    List<Story> getAllStories(String category);

}
