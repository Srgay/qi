package com.qi.project.baokao.service;

import com.qi.project.baokao.domain.Information;

import java.util.List;

public interface InformationService {
    public List<Information> query(Integer sno);

   public List<Information> queryAll();

    public List<Information> querylike(Information information);
}
