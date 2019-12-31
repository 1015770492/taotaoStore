package com.taotao.util;

import java.sql.*;

import java.sql.Connection;
import javax.sql.rowset.CachedRowSet;

import com.sun.rowset.*;

import java.sql.DriverManager;

public class DBUtil {
	//定义mysql驱动程序的路径
	public  static final String DRIVER = "com.jdbc.mysql.Driver";
	public  static final String URL = "jdbc:mysql://localhost:3306/taotaoStore";
	public  static final String USER = "root";
	public  static final String PASSWORD = "123456";

	private static Connection connection;

	public static ResultSet query(String sql,Object[] objects) throws SQLException {
		connection = DriverManager.getConnection(URL, USER , PASSWORD);
		PreparedStatement pstmt = connection.prepareStatement(sql) ;
		for (int i = 0; i < objects.length; i++) {
			pstmt.setObject(i+1, objects[i]);
		}

		ResultSet set =pstmt.executeQuery();

		return set;
	}


	public static void setConnection(Object connection) {
		DBUtil.connection = (Connection) connection;
	}

	//创建一个数据连接方法，返回一个连接对象（Connection)
	public Connection getCon()
	{
		//创建一个Connection 对象
		Connection connection = null;
		try {
			Class.forName(DRIVER);
			connection = DriverManager.getConnection(URL, USER , PASSWORD);
			System.out.println("数据库连接成功！");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

	/*
	 * 释放资源的方法
	 */
	private void closeAll(ResultSet rs,PreparedStatement ps,Connection con)
	{
		try {
			if(rs!=null)
			{
				rs.close();
			}
			if(ps!=null)
			{
				ps.close();
			}
			if(con!=null)
			{
				con.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	/*
	 * 查询executQuery
	 * sql  sql 语句
	 * param   可变参数
	 *
	 */

	public CachedRowSet executQuery(String sql,Object ...param)
	{
		//连接数据库
		Connection con  = getCon();
		//创建preparedStatement 对象
		PreparedStatement ps  = null;

		//创建 ResultSet 对象  结果集
		ResultSet  rs  = null;

		//创建CachedRowSetImpl 对象  缓存的结果集  JDk7.0  以上
		CachedRowSetImpl crs = null;

		try {
			ps  = con.prepareStatement(sql);
			//for 循环 遍历 sql 的参数  param
			for(int  i =0 ;i<param.length;i++)
			{
				//补全sql的参数
				ps.setObject(i+1, param[i]);
			}
			//执行查询操作
			rs = ps.executeQuery();
			//实例化CachedRowSetImpl 对象
			crs  = new  CachedRowSetImpl();
			//将crs 与 rs 相关联
			crs.populate(rs);

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(rs, ps, con);
		}
		return crs;  //返回crs 结果缓存集
	}


	/*
	 * 更新操作
	 * 删除、修改、增加
	 *
	 */

	public int execUpdate(String sql,Object ...param)
	{
		//连接数据库
		Connection con  = getCon();
		//创建preparedStatement 对象
		PreparedStatement ps  = null;
		//更新操作的结果result
		int result  =  0;
		try {

			//实例化PreparedStatement对象
			ps  = con.prepareStatement(sql);
			//for 循环 遍历 sql 的参数  param
			for(int  i =0 ;i<param.length;i++)
			{
				//补全sql的参数
				ps.setObject(i+1, param[i]);
			}
			//执行更新操作
			result  = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll(null, ps, con);
		}
		return result;

	}
}
