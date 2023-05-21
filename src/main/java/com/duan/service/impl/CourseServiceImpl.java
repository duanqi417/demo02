package com.duan.service.impl;

import com.duan.dao.CourseDao;
import com.duan.pojo.Course;
import com.duan.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseDao courseDao;
    @Override
    public List<Course> selectAll() {
        return courseDao.selectAll();
    }
    @Override
    public Course selectById(Integer id) {
        return courseDao.selectById(id);
    }

    @Override
    public Boolean update(Course course) {
        courseDao.update(course);
        return true;
    }

    @Override
    public List<Course> selectByscName(String name) {
        return courseDao.selectByscName(name);
    }

    @Override
    public Boolean insertAutoId(Course course) {
        courseDao.insertAutoId(course);
        return true;
    }

    @Override
    public Boolean deleteById(Integer id) {
        courseDao.deleteById(id);
        return true;
    }
}
