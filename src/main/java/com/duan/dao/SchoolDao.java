package com.duan.dao;

import com.duan.pojo.School;

import java.util.List;


public interface SchoolDao {
    School selectById(Integer id);
    List<School> selectAll();
}
