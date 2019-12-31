package com.taotao.entity;


import java.math.BigDecimal;

public class Commodity {

  private long cId;
  private String cName;
  private String cInfo;
  private String cType;
  private String cMark;
  private BigDecimal cPrice;
  private BigDecimal cPay;
  private String cStatus;
  private long cCount;


  public long getCId() {
    return cId;
  }

  public void setCId(long cId) {
    this.cId = cId;
  }


  public String getCName() {
    return cName;
  }

  public void setCName(String cName) {
    this.cName = cName;
  }


  public String getCInfo() {
    return cInfo;
  }

  public void setCInfo(String cInfo) {
    this.cInfo = cInfo;
  }


  public String getCType() {
    return cType;
  }

  public void setCType(String cType) {
    this.cType = cType;
  }


  public String getCMark() {
    return cMark;
  }

  public void setCMark(String cMark) {
    this.cMark = cMark;
  }


  public BigDecimal getcPrice() {
    return cPrice;
  }

  public void setcPrice(BigDecimal cPrice) {
    this.cPrice = cPrice;
  }

  public BigDecimal getcPay() {
    return cPay;
  }

  public void setcPay(BigDecimal cPay) {
    this.cPay = cPay;
  }

  public String getCStatus() {
    return cStatus;
  }

  public void setCStatus(String cStatus) {
    this.cStatus = cStatus;
  }


  public long getCCount() {
    return cCount;
  }

  public void setCCount(long cCount) {
    this.cCount = cCount;
  }

}
