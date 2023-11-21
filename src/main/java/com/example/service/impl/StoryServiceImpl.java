package com.example.service.impl;

import com.example.dao.StoryDao;
import com.example.model.Story;
import com.example.service.StoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StoryServiceImpl implements StoryService {

    @Autowired
    private StoryDao storyDao;

    @Override
    public List<Story> getAllStories(String category){
        return storyDao.getAllStories(category);
    }


}
