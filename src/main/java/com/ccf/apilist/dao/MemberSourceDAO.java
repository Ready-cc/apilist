package com.ccf.apilist.dao;

import com.ccf.apilist.domain.memberSource;

import java.util.List;

public interface MemberSourceDAO {
    List<memberSource> getList();
    List<memberSource> getList(String UID);
    int delbyid();

}
