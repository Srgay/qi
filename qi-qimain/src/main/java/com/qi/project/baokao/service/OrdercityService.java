package com.qi.project.baokao.service;

import com.qi.project.baokao.domain.Ordercity;
import org.hibernate.validator.constraints.EAN;

import java.util.List;

public interface OrdercityService {
    public List<Ordercity> queryAll();
    public int querysno(String city);
}
