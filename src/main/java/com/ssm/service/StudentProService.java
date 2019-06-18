package com.ssm.service;

import com.ssm.pojo.ScorePro;
import com.ssm.pojo.StudentPro;

import java.util.List;

public interface StudentProService {
    public List<StudentPro> selectAll() throws Exception;
    public List<ScorePro> selectAllBySubject(ScorePro scorePro) throws Exception;
}
