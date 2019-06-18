package com.ssm.service.impl;

import com.ssm.mapper.ScoreMapper;
import com.ssm.pojo.Score;
import com.ssm.pojo.ScoreExample;
import com.ssm.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScoreServiceImpl implements ScoreService {

    @Autowired
    private ScoreMapper scoreMapper;

    @Override
    public Score insertScore(Score score) throws Exception {
        int row = scoreMapper.insert(score);
        return row > 0 ? score : null;
    }

    @Override
    public Score updateScore(Score score) throws Exception {
        Score newScore = selectScore(score);
        if (newScore!=null){
            newScore.setSclass(score.getSclass());
            newScore.setSubject(score.getSubject());
            newScore.setScore(score.getScore());
            newScore.setSno(score.getSno());
            int row = scoreMapper.updateByPrimaryKey(newScore);
            return row > 0 ? newScore : null;
        }
        return null;
    }

    @Override
    public List<Score> selectAllScore(Score score) throws Exception {
        ScoreExample scoreExample = new ScoreExample();
        ScoreExample.Criteria criteria = scoreExample.createCriteria();
        criteria.andSnoEqualTo(score.getSno());
        return scoreMapper.selectByExample(scoreExample);
    }

    @Override
    public Score selectScore(Score score) throws Exception {
        return scoreMapper.selectByPrimaryKey(score.getId());
    }

    @Override
    public int delect(Score score) throws Exception {
        return scoreMapper.deleteByPrimaryKey(score.getId());
    }
}
