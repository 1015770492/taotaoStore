package com.taotao.util;

import java.lang.reflect.Field;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sun.rowset.*;

public class BaseDBUtil {
    //定义mysql驱动程序的路径
    public static final String DRIVER = "org.gjt.mm.mysql.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/taotaoStore";
    public static final String USER = "root";
    public static final String PASSWORD = "123456";

    //创建一个数据连接方法，返回一个连接对象（Connection)
    public static Connection getCon() {
        //创建一个Connection 对象
        Connection con = null;
        try {
            Class.forName(DRIVER);
            con = (Connection) DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("数据库连接成功！");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    /*
     * 释放资源的方法
     */
    private static void closeAll(ResultSet rs, PreparedStatement ps, Connection con) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    /*
     * 更新操作
     * 删除、修改、增加
     *
     */

    public static int execUpdate(String sql, Object... param) {
        //连接数据库
        Connection con = getCon();
        //创建preparedStatement 对象
        PreparedStatement ps = null;
        //更新操作的结果result
        int result = 0;
        try {

            //实例化PreparedStatement对象
            ps = con.prepareStatement(sql);
            //for 循环 遍历 sql 的参数  param
            for (int i = 0; i < param.length; i++) {
                //补全sql的参数
                ps.setObject(i + 1, param[i]);
            }
            //执行更新操作
            result = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeAll(null, ps, con);
        }
        return result;
    }

    /*
     * 查询select()
     * java 的反射机制
     *
     */
    public static Object select(String sql, Class cla, Object... param) {
        //连接数据库
        Connection con = getCon();
        //创建preparedStatement 对象
        PreparedStatement ps = null;
        //创建 ResultSet 对象  结果集
        ResultSet rs = null;
        //创建CachedRowSetImpl 对象  缓存的结果集  JDk7.0  以上
        CachedRowSetImpl crs = null;
        //创建一个List列表
        List<Object> list = new ArrayList<Object>();
        try {
            ps = con.prepareStatement(sql);
            //for 循环 遍历 sql 的参数  param
            for (int i = 0; i < param.length; i++) {
                //补全sql的参数
                ps.setObject(i + 1, param[i]);
            }
            //执行查询操作
            rs = ps.executeQuery();
            //实例化CachedRowSetImpl 对象
            crs = new CachedRowSetImpl();
            //将crs 与 rs 相关联
            crs.populate(rs);
            //新增语句
            /*
             * 在这里做具体的赋值操作
             * 反射应用
             */
            //1.获取成员的属性  import java.lang.reflect.Field;
            Field[] fs = cla.getDeclaredFields();
            Object obj = null;
            while (crs.next()) {
                //2.获取实例对象
                obj = cla.newInstance();
                //3.for 遍历每个属性
                for (Field f : fs) {
                    //4.开启访问属性的权限
                    f.setAccessible(true);
                    //5.获取属性名
                    String key = f.getName();
                    //6.获取属性值  通过key 获取值  （key ,value)
                    Object value = crs.getObject(key);
                    //7.对象属性设置属性值
                    f.set(obj, value);
                }
                list.add(obj);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeAll(rs, ps, con);
        }
        return list;

    }


}
