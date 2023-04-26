package actionSvc;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import modeling2.New_table;
import modeling2.member;


@Repository
public class DataOperation {
	// 여기서 데이터를 처리하는 작업을 수행한다.
	
	@Autowired
	DataSource ds;
	
	@Autowired
	SqlSession sql;
	
	Connection connect = null;
	Statement save = null;
	
	/*
	public ArrayList<New_table> select () {
		ResultSet rs = null;
		
		ArrayList<New_table> modeling = new ArrayList<New_table>();
		
		try{
			// Class.forName("com.mysql.jdbc.Driver");
			// connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/mary", "root", "0407");
			connect = ds.getConnection();
			// 이걸로 데이터베이스에 연결
			save = connect.createStatement();
			System.out.println("-----------Databases1(출력) 클래스 실행-----------");
			String data = "select * from New_table;"; 
			rs = save.executeQuery(data);
			// 쿼리는 데이터를 끌고 오는것.
			
			
			while(rs.next()) {
				// 객체의 정보 하나만 넣을거면 if 계속해서 할거면 while
				New_table ob = new New_table();
				ob.setNum(rs.getInt("num"));
				ob.setTitle(rs.getString("title"));
				ob.setContent(rs.getString("content"));
				ob.setCode(rs.getString("code"));
				ob.setDate(rs.getString("date"));

				// 데이터베이스에서 가져온 데이터를 객체(Obj)에 집어넣는다.
				modeling.add(ob);
			}

			
		}catch(Exception e) {
			System.out.println("fokin error");
			System.out.println(e+"오류입니다.");
			e.printStackTrace();
			
		}finally {
			try {
				rs.close();
				save.close();
				connect.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
		
		return modeling;
	} //select
	*/

	public List<New_table> select() {
	    
		List<New_table> modeling = new ArrayList<New_table>();
		// xml <select>문을 통해 받아온 데이터는 List로 받아오기때문에 List를 import한다.
		// ArrayList는 List의 하위개념이다.
		// List는 <New_table>이라는 객체를 타입으로 한다.
	    
	    modeling = sql.selectList("select_NewTable");
	    // xml(mapper)에 있는 sql문을 parameter로 받는다.

	    return modeling;
	} //select

	/*
	public void insert2(New_table ob) {
		// 입력 메서드
		
		try{
			//Class.forName("com.mysql.jdbc.Driver");
			// connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/mary?useSSL=false", "root", "0407");
			// 하나의 커넥트당 작업은 하나씩 해야한다.
			connect = ds.getConnection();
			save = connect.createStatement();
			System.out.println("-----------Databases1(입력) 클래스 실행-----------");
			String data = "insert into new_table(`title`, `content`, `code`) values('" + ob.getTitle() + "','" + 
			ob.getContent() + "','" + ob.getCode() + "');"; 
			
			save.executeUpdate(data);

		}catch(Exception e) {
			System.out.println(e+"오류입니다.");
			e.printStackTrace();
		}finally {
			try {
				save.close();
				connect.close();
			}catch(Exception e){
				
				e.printStackTrace();
				
			}
		}
		
	}  // method insert
	*/
	
	public void insert2(New_table ob) {
		
		sql.insert("insert_NewTable", ob);
		
	} // inser2 ver.MyBatis
	
	/*
	public void delete2(Integer no) {
		// 삭제 메서드
		
		try{
			// Class.forName("com.mysql.jdbc.Driver");
			// connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/mary?useUnicode=true&characterEncoding=utf8", "root", "0407");
			// 하나의 커넥트당 작업은 하나씩 해야한다.
			connect = ds.getConnection();
			save = connect.createStatement();
			System.out.println("-----------Databases1(삭제) 클래스 실행-----------");
			String data = "delete from new_table where num=" + no +  ";"; 
			save.executeUpdate(data);

		}catch(Exception e) {
			System.out.println(e+"오류입니다.");
		}finally {
			try {
				save.close();
				connect.close();
			}catch(Exception e){
			}
		}

	} // method delete
	*/
	
	public void delete2(Integer no) {
		// 삭제 메서드
		
		sql.delete("delete_NewTable", no);

	} // method delete
	
	public String login(member login) {
		member mem = new member();
		String loginId = "/fail";
		
		mem = sql.selectOne("login", login);
		
		if(mem == null) { System.out.println("로그인에 실패하였습니다."); 
		
		} else if(mem.getPw().equals(login.getPw())) {
			System.out.println("로그인에 성공하였습니다.");
			loginId = login.getId();
			
		} else {  System.out.println("비밀번호가 틀렸습니다."); 
			
		}
	
		return loginId;
	} // login
	
	public New_table selectPost(Integer no) {
		
		New_table one = new New_table();
		
		one = sql.selectOne("onePost", no);
		
		return one;
	} // selectOne
	

	
} // class