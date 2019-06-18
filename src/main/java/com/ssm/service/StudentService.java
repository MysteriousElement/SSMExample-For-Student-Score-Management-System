package com.ssm.service;

import com.ssm.pojo.Student;

import java.util.List;

public interface StudentService {
    public Student insertStudent(Student student) throws Exception;
    public Student updateStudent(Student student) throws Exception;
    public Student selectStudent(Student student) throws Exception;
    public List<Student> selectAll(Student student) throws Exception;
}
