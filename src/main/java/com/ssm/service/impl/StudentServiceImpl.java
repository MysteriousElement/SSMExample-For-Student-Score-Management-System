package com.ssm.service.impl;

import com.ssm.mapper.StudentMapper;
import com.ssm.pojo.Student;
import com.ssm.pojo.StudentExample;
import com.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public Student insertStudent(Student student) throws Exception {
        int row = studentMapper.insert(student);
        return row > 0 ? student : null;
    }

    @Override
    public Student updateStudent(Student student) throws Exception {
        Student newStudent = selectStudent(student);
        if (newStudent!=null){
            newStudent.setSex(student.getSex());
            newStudent.setAge(student.getAge());
            newStudent.setSname(student.getSname());
            int row = studentMapper.updateByPrimaryKey(newStudent);
            return row > 0 ? newStudent : null;
        }
        return null;
    }

    @Override
    public Student selectStudent(Student student) throws Exception {
        return studentMapper.selectByPrimaryKey(student);
    }

    @Override
    public List<Student> selectAll(Student student) throws Exception {
        StudentExample studentExample = new StudentExample();
        StudentExample.Criteria criteria = studentExample.createCriteria();
        criteria.andSnoEqualTo(student.getSno());
        return studentMapper.selectByExample(studentExample);
    }

}
