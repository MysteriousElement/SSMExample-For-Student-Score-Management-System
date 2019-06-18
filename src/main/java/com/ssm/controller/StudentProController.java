package com.ssm.controller;

import com.ssm.pojo.Score;
import com.ssm.pojo.ScorePro;
import com.ssm.pojo.StudentPro;
import com.ssm.service.ScoreService;
import com.ssm.service.StudentProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes({"listAll","listAllBySub"})
public class StudentProController {

    @Autowired
    private StudentProService studentProService;
    @Autowired
    private ScoreService scoreService;

    @RequestMapping("select")
    public @ResponseBody List<StudentPro> selectAll(Model model){
        List<StudentPro> list = null;
        try {
            list = studentProService.selectAll();
            model.addAttribute("listAll",list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @RequestMapping("delect")
    public @ResponseBody Map<String,String> delect(Score score){
        Map<String,String> map = new HashMap<String, String>();
        try {
             int row = scoreService.delect(score);
            if (row <= 0) map.put("msg","出现异常情况，删除成绩失败！");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    @RequestMapping("selectBySubject")
    public @ResponseBody List<ScorePro> selectBySubject(ScorePro scorePro, Model model){
        List<ScorePro> list = null;
        try {
            list = studentProService.selectAllBySubject(scorePro);
            model.addAttribute("listAllBySub",list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
