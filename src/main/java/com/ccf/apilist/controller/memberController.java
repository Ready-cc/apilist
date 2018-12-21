package com.ccf.apilist.controller;


import com.ccf.apilist.domain.memberSource;
import com.ccf.apilist.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class memberController {

    @Autowired
    MemberService memberService;
    @RequestMapping("/list")
    @ResponseBody
    public List<memberSource> list(@RequestParam("uid")  String uid){
         return  memberService.querybyid(uid);
    }
    @RequestMapping("/query")
    public String queryList(String uid){
        memberService.querybyid(uid);
        return "查询删除关联关系";
    }
}
