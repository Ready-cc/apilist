package com.ccf.apilist.service;


import com.ccf.apilist.domain.memberSource;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.hamcrest.CoreMatchers.is;


@RunWith(SpringRunner.class)
@SpringBootTest
public class MemberServiceTest {

    @Autowired
    MemberService memberService;

    @Test
    public void querybyid(){
        List<memberSource> memberSource = memberService.querybyid("71389774");
        Assert.assertThat(memberSource.get(0).getMemberId(),is("100025217980"));

    }

}