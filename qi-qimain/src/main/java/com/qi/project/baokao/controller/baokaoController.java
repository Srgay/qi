package com.qi.project.baokao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qi.framework.web.domain.AjaxResult;
import com.qi.project.baokao.domain.Information;
import com.qi.project.baokao.domain.Ordercity;
import com.qi.project.baokao.service.InformationService;
import com.qi.project.baokao.service.OrdercityService;
import com.qi.project.fs.domain.Article;
import com.qi.project.fs.service.ArticleService;
import com.qi.project.test.controller.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class baokaoController {

    @Autowired
    private OrdercityService ordercityService;
    @Autowired
    private InformationService informationService;

    @RequestMapping(value = "/citys")
    @ResponseBody
    public AjaxResult citys() {
        List<Ordercity> ordercities = ordercityService.queryAll();
        return AjaxResult.success(ordercities);
    }

    @RequestMapping(value = "/schools")
    @ResponseBody
    public AjaxResult schools(String pagenum,String pagesize,String query) {
        if (query!=""){
            Integer sno=ordercityService.querysno(query);
            PageHelper.startPage(Integer.parseInt(pagenum),Integer.parseInt(pagesize));
            Information information=new Information();
            information.setSno(sno);
            List<Information> informations = informationService.query(information.getSno());
            PageInfo<Information> pageInfo = new PageInfo<Information>(informations);
            return AjaxResult.success(pageInfo);
        }else{
            PageHelper.startPage(Integer.parseInt(pagenum),Integer.parseInt(pagesize));
            List<Information> informations = informationService.queryAll();
            PageInfo<Information> pageInfo = new PageInfo<Information>(informations);
            return AjaxResult.success(pageInfo);
        }
    }
    @RequestMapping(value = "/school")
    @ResponseBody
    public AjaxResult school(String pagenum,String pagesize,String query) {
        if (query!=""){
            PageHelper.startPage(Integer.parseInt(pagenum),Integer.parseInt(pagesize));
            Information information=new Information();
            information.setSchool(query);
            List<Information> informations = informationService.querylike(information);
            PageInfo<Information> pageInfo = new PageInfo<Information>(informations);
            return AjaxResult.success(pageInfo);
        }else{
            PageHelper.startPage(Integer.parseInt(pagenum),Integer.parseInt(pagesize));
            List<Information> informations = informationService.queryAll();
            PageInfo<Information> pageInfo = new PageInfo<Information>(informations);
            return AjaxResult.success(pageInfo);
        }
    }
}
