package com.taotao.test;


import com.taotao.dao.ShoppingCartDao;

class TestDemoTest {
    public static void main(String[] args) {
        ShoppingCartDao.selectShoppingCartByUserPhone("123456");
    }
}