package com.duan.service;

import com.duan.pojo.Course;

import java.util.List;


public interface CourseService {
    Boolean insertAutoId(Course course);
    Boolean deleteById(Integer id);
    List<Course> selectAll();
    Course selectById(Integer id);
    Boolean update(Course course);
    List<Course> selectByscName(String name);
}
