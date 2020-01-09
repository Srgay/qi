package com.qi.project.baokao.service.impl;

import com.qi.project.baokao.domain.Information;
import com.qi.project.baokao.mapper.InformationMapper;
import com.qi.project.baokao.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
@Service
public class InformationServiceImpl implements InformationService {
    @Autowired
    private InformationMapper informationMapper;
    @Override
    public List<Information> query(Integer sno) {
        List<Information> Informations = null;
        Example example = new Example(Information.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("sno",  sno );
        Informations = informationMapper.selectByExample(example);
        return Informations;
    }

    @Override
    public List<Information> queryAll() {
        return informationMapper.selectAll();
    }
    @Override
    public List<Information> querylike(Information information){
        List<Information> Informations = null;
        Example example = new Example(Information.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andLike("school", "%"+ information.getSchool()+"%" );
        Informations = informationMapper.selectByExample(example);
        return Informations;
    }
}
