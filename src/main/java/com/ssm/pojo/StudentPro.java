package com.ssm.pojo;

import java.util.List;

public class StudentPro extends Student {
    private List<Score> score;

    public List<Score> getScore() {
        return score;
    }

    public void setScore(List<Score> score) {
        this.score = score;
    }
}
