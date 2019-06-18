package com.ssm.service.impl;

import com.ssm.mapper.StudentProMapper;
import com.ssm.pojo.ScorePro;
import com.ssm.pojo.StudentPro;
import com.ssm.service.StudentProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentProServiceImpl implements StudentProService {

    @Autowired
    private StudentProMapper studentProMapper;

    @Override
    public List<StudentPro> selectAll() throws Exception {
        return studentProMapper.selectAll();
    }

    @Override
    public List<ScorePro> selectAllBySubject(ScorePro scorePro) throws Exception {
        return studentProMapper.selectAllBySubject(scorePro);
    }
}
