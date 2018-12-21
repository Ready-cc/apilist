package com.ccf.apilist.service;

import com.ccf.apilist.domain.memberSource;

import java.util.List;

public interface MemberService {
    List<memberSource> getList();
    List<memberSource> querybyid(String uid);
    void deletebyid(String id);
    void updatebyauthor(String author);
}
