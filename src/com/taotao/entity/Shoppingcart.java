package com.taotao.entity;


import java.math.BigDecimal;

public class Shoppingcart {

  private long cId;
  private String imgSrc;
  private String cName;
  private String cInfo;
  private String cType;
  private String cMark;
  private BigDecimal cPrice;
  private BigDecimal cPay;
  private long oNum;
  private String oPayUser;
  private String oStatus;
  private String url;
  private String srcList1;
  private String srcList2;
  private String srcList3;

  public Shoppingcart() {
  }

  public long getCId() {
    return cId;
  }

  public void setCId(long cId) {
    this.cId = cId;
  }


  public String getImgSrc() {
    return imgSrc;
  }

  public void setImgSrc(String imgSrc) {
    this.imgSrc = imgSrc;
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

  public long getONum() {
    return oNum;
  }

  public void setONum(long oNum) {
    this.oNum = oNum;
  }


  public String getOPayUser() {
    return oPayUser;
  }

  public void setOPayUser(String oPayUser) {
    this.oPayUser = oPayUser;
  }


  public String getOStatus() {
    return oStatus;
  }

  public void setOStatus(String oStatus) {
    this.oStatus = oStatus;
  }


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public String getSrcList1() {
    return srcList1;
  }

  public void setSrcList1(String srcList1) {
    this.srcList1 = srcList1;
  }


  public String getSrcList2() {
    return srcList2;
  }

  public void setSrcList2(String srcList2) {
    this.srcList2 = srcList2;
  }


  public String getSrcList3() {
    return srcList3;
  }

  public void setSrcList3(String srcList3) {
    this.srcList3 = srcList3;
  }

}
