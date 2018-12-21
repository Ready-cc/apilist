package com.ccf.apilist.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class apilist {
/*    @RequestMapping("/")
    public ModelAndView index(){

        List<apiSource> apilist = new ArrayList<apiSource>();
        apiSource bean = new apiSource("名称","描述","http://www.baidu.com");
        apilist.add(bean);
        bean = new apiSource("test","test","");
        apilist.add(bean);
        ModelAndView modelAndView = new ModelAndView("/index");
        modelAndView.addObject("apilist",apilist);
        return modelAndView;
    }*/

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(){
        return "index";
    }
}

