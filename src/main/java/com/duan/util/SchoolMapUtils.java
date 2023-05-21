package com.duan.util;

import com.duan.pojo.School;
import com.duan.service.impl.SchoolServiceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SchoolMapUtils {
    public static Map<Integer,String> getSchoolMap()
    {
        SchoolServiceImpl sp = new SchoolServiceImpl();
        List<School> schools=sp.selectAll();
        Map<Integer,String> m =new HashMap<Integer,String>();
        for(School s : schools)
        {
            m.put(s.getId(),s.getSchoolName());
        }
        return m;
    }
}
