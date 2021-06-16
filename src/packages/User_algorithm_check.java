package packages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.faces.bean.SessionScoped;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class User_algorithm_check {

	public String url="https://bloggingbucket.s3.eu-west-3.amazonaws.com/";

					public int psvm(int c) {
						int x;
						while (true) {
							 x=(int)(Math.random()*(c));
							 if(x!=0 && x<c) {
									System.out.println(x+" shoot");
								 return x;
							 }
						}
					
					}
			
			static int o;
			public String member_check(String cats, Connection  connection, PreparedStatement statement,String table,String not) {	
				String x=null; 
					o++;
					if(o==1) 
					     x=" select * from   "+table+"   where    cats not like '%"+not+ "%'  and  typeq  like '%"+cats+"%' and id>="+psvm(sum(connection,statement,table))+"   limit 50";
				
					if(o==2) {
						 x=" select * from   "+table+"   where    cats not like '%"+not+ "%'  and  typeq  like '%"+cats+"%' and id>="+psvm(sum(connection,statement,table))+" order by id desc  limit 50 ";
						 o=0;
					}
				System.out.println("Count  "+o);
				return	x;
			}

	

			

			public int sum(Connection  connection, PreparedStatement statement, String k) {
				int x = 0;
				  try {
							statement=connection.prepareStatement("select max(id) as m from  "+k);
						   ResultSet  rs= statement.executeQuery();
						   while(rs.next()) {
							    x=Integer.parseInt(rs.getString("m"));
							         System.out.println(x+" max");
						         }
						   
						       } catch (SQLException e) {
							System.out.println(e);
						}
				return x;
			}
	
			
			
			
			public String name_format(String p) {
				 int a=p.indexOf(".");
			        String w=p.substring(0,a);
			          w=  w.concat(".mp4");
			          return w;
				
			}
			
			
			public String name_format1(String p) {
				 int a=p.indexOf(".");
			        String w=p.substring(0,a);
			          w=  w.concat(".png");
			          return w;
				
			}
			
			
	public String news() {
				return " select * from Pics_path where typeq='news'  order by id desc limit 50";
			}
	
			
			public String Gist() {
				return " select * from Pics_path where typeq='Gist'  order by id desc limit 50";
			}
			
			
			
	public String funny() {
				return "select * from Pics_path where typeq='funny'  order by id desc limit 10";
			}
	

	public String api_p(String x) {
		return " select * from   Pics_path   where    cats not like '%Watch Video%'  and  id="+x;
	}
	
	public String api_v(String x) {
		return "select * from  Vid_path   where id="+x;
	}
	
	public String music_paths() {
		return " select title from Music_path limit 10";
	}
	
	public String view_paths(String h) {
		return " select * from Pics_path where id="+h;
	}
	
	public String view_random(String c) {
		return " select * from Pics_path where typeq like '%"+c+"%' order by id  desc limit 6";
	}
	
	
	
	

	
	
	public String products(int p, Connection connection, PreparedStatement statement) {
		int z=random(connection, statement);
			return " select * from Pics_path where station='reviews' and id>="+z+" limit 12";
			
			
	}
	
	

	
	
	public int random(Connection connection, PreparedStatement statement) {
		int c=track(connection,statement, "Pics_path");

		int x;
		while (true) {	
			x= (int)(Math.random()*(c));
			 System.out.println(x+"  SHOOT");
			if(x!=0 && x<c)
				return x;
		}
		
	}
	

	


	public String products1(int x, String s) {
		System.out.println("A "+s);
		return	 "select * from Pics_path where station='reviews' and  id >"+s+" limit 12";
				
	}
	
	
	
	
	public String products2(int x, String s) {
		System.out.println("B "+s);
			return "select * from Pics_path where station='reviews' and  id >"+s+" limit 12";
				
	}

	
	
	
	
	
	
	
	public int track( Connection  connection,PreparedStatement statement, String tb) {
	int e=0;
	try {
		//"SELECT id   FROM "+tb+"  ORDER BY id DESC  LIMIT 1"
		statement=connection.prepareStatement("SELECT max(id) as e  FROM "+tb);
	   ResultSet  rs= statement.executeQuery();
	   while(rs.next()) {
		   e=Integer.valueOf(rs.getString("e"));
	   }
	} catch (SQLException er) {
		System.out.println(er);
	}
	return e;
}
}
