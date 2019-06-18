package com.ssm.service;

import com.ssm.pojo.Score;

import java.util.List;

public interface ScoreService {
    public Score insertScore(Score score) throws Exception;
    public Score updateScore(Score score) throws Exception;
    public List<Score> selectAllScore(Score score)throws Exception;
    public Score selectScore(Score score)throws Exception;
    public int delect(Score score) throws Exception;
}
