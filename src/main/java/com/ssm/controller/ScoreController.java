package com.ssm.controller;

import com.ssm.pojo.Score;
import com.ssm.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@SessionAttributes({"score","list"})
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    @RequestMapping("addScore")
    public @ResponseBody Score addScore(Score score , Model model){
        Score newScore = null;
        try {
            newScore = scoreService.insertScore(score);
            model.addAttribute("score",newScore);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return newScore;
    }
    @RequestMapping("modScore")
    public @ResponseBody Score modScore(Score score , Model model){
        Score newScore = null;
        try {
            newScore = scoreService.updateScore(score);
            selScore(score.getSno(),model);
            model.addAttribute("score",newScore);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return newScore;
    }

    @RequestMapping("selScore")
    public String selScore(int sno , Model model){
        List<Score> list = null;
        Score score = new Score();
        score.setSno(sno);
        try {
            list = scoreService.selectAllScore(score);
            model.addAttribute("list",list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home/page5";
    }
}
