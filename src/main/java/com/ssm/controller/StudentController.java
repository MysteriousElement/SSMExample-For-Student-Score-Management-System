package com.ssm.controller;

import com.ssm.pojo.Student;
import com.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@SessionAttributes({"student","lists"})
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("addStudent")
    public @ResponseBody Student addStudent(Student student, Model model){
        Student newStudent = null;
        try {
            newStudent = studentService.insertStudent(student);
            model.addAttribute("student",newStudent);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return student;
    }

    @RequestMapping("modStudent")
    public @ResponseBody Student modStudent(Student student ,Model model){
        Student newStudent = null;
        try {
            newStudent = studentService.updateStudent(student);
            model.addAttribute("student",newStudent);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return newStudent;
    }

    @RequestMapping("selStudent")
    public String selStudent(Student student ,Model model){
        List<Student> list = null;
        try {
            list = studentService.selectAll(student);
            model.addAttribute("lists",list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home/page3";
    }
}
