package com.cdsxt.web.controller;

import com.cdsxt.po.Tenement;
import com.cdsxt.service.TenementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * @author jcx
 * @className TenementController
 * @description TODO
 */
@Controller
@RequestMapping("/tenementManage")
public class TenementController {

    @Autowired
    private TenementService tenementService;

    @RequestMapping({"","query"})
    public String toManage(Model model){
        List<Tenement> tenes = this.tenementService.findAll();
        model.addAttribute("tenes",tenes);
        return "tenement/tenementManage";
    }

    @RequestMapping(value="add",method= RequestMethod.POST)
    public void addTene(Tenement tenement){
        this.tenementService.addTene(tenement);
    }

    @RequestMapping(value="add",method= RequestMethod.GET)
    public String addTene(){
        return "tenement/tenementAdd";
    }

}
