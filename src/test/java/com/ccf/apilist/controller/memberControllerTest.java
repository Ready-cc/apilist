package com.ccf.apilist.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringRunner.class)
@SpringBootTest
public class memberControllerTest {

    @Autowired
    private WebApplicationContext wac;

    private MockMvc mvc;

    @Test
    public void list() throws Exception {
        mvc = MockMvcBuilders.webAppContextSetup(wac).build();

        String json ="{\"memeberid\":\"\",\"out_member_id\":\"\"}";
        mvc.perform(MockMvcRequestBuilders.get("/list")
        .accept(MediaType.APPLICATION_JSON_UTF8)
        .content(json.getBytes()))
                .andExpect(MockMvcResultMatchers.status().is(400))
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void list1() throws Exception {
        mvc = MockMvcBuilders.webAppContextSetup(wac).build();

        String json ="[{\"uid\":\"100008490147\",\"memberId\":\"\"},{\"uid\":\"100017173943\",\"memberId\":\"\"}]";
        mvc.perform(MockMvcRequestBuilders.post("/list")
                .param("uid","")
                .accept(MediaType.APPLICATION_JSON_UTF8)
                )
//                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print())
                .andExpect(MockMvcResultMatchers.content().json(json));
    }

    @Test
    public void queryList() {
    }
}