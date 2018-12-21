package com.ccf.apilist.dao.imp;

import com.ccf.apilist.dao.MemberSourceDAO;
import com.ccf.apilist.domain.memberSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class MemberSourceImp implements MemberSourceDAO{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    List<memberSource> memberSources;

    @Override
    public List<memberSource> getList() {
        memberSources = jdbcTemplate.query("select member_id,out_member_id from member.tm_member_source;",new Object[]{},new BeanPropertyRowMapper<>(memberSource.class));

        if(memberSources.size()>0&&memberSources!=null){
            return memberSources;
        }else {
            return null;
        }
    }

    @Override
    public List<memberSource> getList(String uid) {
        String sql = "select member_id,out_member_id from member.tm_member_source where out_member_id = ?;";
        memberSources = jdbcTemplate.query(sql, new RowMapper<memberSource>() {
            @Override
            public memberSource mapRow(ResultSet resultSet, int i) throws SQLException {
                String member_id = resultSet.getString("member_id");
                String out_member_id = resultSet.getString("out_member_id");
                memberSource  memberSource = new memberSource(member_id,out_member_id);
                memberSource.setMemberId(member_id);
                memberSource.setUID(out_member_id);
                return memberSource;
            }
        },uid);
        if(memberSources!=null&&memberSources.size()>0){
            return memberSources;
        }else
            return null;
        }

    @Override
    public int delbyid() {
        return 0;
    }
}
