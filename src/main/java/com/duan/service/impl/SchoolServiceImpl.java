package com.duan.service.impl;

import com.duan.dao.SchoolDao;
import com.duan.pojo.School;
import com.duan.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SchoolServiceImpl implements SchoolService {
    @Autowired
    private SchoolDao schoolDao;

    @Override
    public List<School> selectAll() {
        return schoolDao.selectAll();
    }

    @Override
    public School selectById(Integer id) {
        return schoolDao.selectById(id);
    }
}
