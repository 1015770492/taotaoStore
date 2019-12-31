package com.taotao.entity;


import java.math.BigDecimal;

public class Order {

    private long oId;
    private long cId;
    private long oNum;
    private String oStatus;
    private String oReceiverAddresse;
    private String oReceiver;
    private String oRecesiverPhone;
    private String oPayUId;
    private BigDecimal oPosttage;
    private BigDecimal oCast;


    public long getOId() {
        return oId;
    }

    public void setOId(long oId) {
        this.oId = oId;
    }


    public long getCId() {
        return cId;
    }

    public void setCId(long cId) {
        this.cId = cId;
    }


    public long getONum() {
        return oNum;
    }

    public void setONum(long oNum) {
        this.oNum = oNum;
    }


    public String getOStatus() {
        return oStatus;
    }

    public void setOStatus(String oStatus) {
        this.oStatus = oStatus;
    }


    public String getOReceiverAddresse() {
        return oReceiverAddresse;
    }

    public void setOReceiverAddresse(String oReceiverAddresse) {
        this.oReceiverAddresse = oReceiverAddresse;
    }


    public String getOReceiver() {
        return oReceiver;
    }

    public void setOReceiver(String oReceiver) {
        this.oReceiver = oReceiver;
    }


    public String getORecesiverPhone() {
        return oRecesiverPhone;
    }

    public void setORecesiverPhone(String oRecesiverPhone) {
        this.oRecesiverPhone = oRecesiverPhone;
    }


    public String getOPayUId() {
        return oPayUId;
    }

    public void setOPayUId(String oPayUId) {
        this.oPayUId = oPayUId;
    }


    public BigDecimal getoPosttage() {
        return oPosttage;
    }

    public void setoPosttage(BigDecimal oPosttage) {
        this.oPosttage = oPosttage;
    }

    public BigDecimal getoCast() {
        return oCast;
    }

    public void setoCast(BigDecimal oCast) {
        this.oCast = oCast;
    }


}
