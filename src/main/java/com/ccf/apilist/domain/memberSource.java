package com.ccf.apilist.domain;

public class memberSource {
    private     String UID;
    private  String MemberId;

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public String getMemberId() {
        return MemberId;
    }

    public void setMemberId(String memberId) {
        MemberId = memberId;
    }


    public memberSource(String UID, String memberId) {
        this.UID = UID;
        MemberId = memberId;
    }


}
