package com.ccf.apilist.service.imp;

import com.ccf.apilist.dao.MemberSourceDAO;
import com.ccf.apilist.domain.memberSource;
import com.ccf.apilist.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImp implements MemberService {

    @Autowired
    MemberSourceDAO memberSourceDAO;

    @Override
    public List<memberSource> getList() {
        return memberSourceDAO.getList();
    }

    @Override
    public List<memberSource> querybyid(String id) {
        return memberSourceDAO.getList(id);


    }

    @Override
    public void deletebyid(String id) {

    }

    @Override
    public void updatebyauthor(String author) {

    }
}
