package com.ssm.mapper;

import com.ssm.pojo.ScorePro;
import com.ssm.pojo.StudentPro;

import java.util.List;

public interface StudentProMapper {
    List<StudentPro> selectAll();
    List<ScorePro> selectAllBySubject(ScorePro scorePro);
}
