package com.duan.service;

import com.duan.pojo.School;

import java.util.List;


public interface SchoolService {
    School selectById(Integer id);
    List<School> selectAll();
}
