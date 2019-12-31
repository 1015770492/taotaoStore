package com.taotao.dao;

import com.taotao.entity.Shoppingcart;
import com.taotao.util.BaseDBUtil;


import java.util.List;

public class ShoppingCartDao {

    public static List<Shoppingcart> selectShoppingCartByUserPhone(String userPhone){
        String sql="select * from shoppingcart where oPayUser=?";
        return (List<Shoppingcart>)BaseDBUtil.select(sql, Shoppingcart.class, userPhone);
    }

}
