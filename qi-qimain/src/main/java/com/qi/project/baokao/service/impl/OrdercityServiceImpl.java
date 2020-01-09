package com.qi.project.baokao.service.impl;

import com.qi.project.baokao.domain.Information;
import com.qi.project.baokao.domain.Ordercity;
import com.qi.project.baokao.mapper.OrdercityMapper;
import com.qi.project.baokao.service.OrdercityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
@Service
public class OrdercityServiceImpl implements OrdercityService {
    @Autowired
    private OrdercityMapper ordercityMapper;
    @Override
    public List<Ordercity> queryAll() {
        return ordercityMapper.selectAll();
    }

    @Override
    public int querysno(String city) {
        Example example = new Example(Ordercity.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("city", city );
        return ordercityMapper.selectOneByExample(example).getSno();
    }
}
