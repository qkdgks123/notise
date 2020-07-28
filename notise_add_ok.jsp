<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%
	request.setCharacterEncoding("euc-kr");

	Class.forName("");
	
	String url = "";
	String id = "";
	String pass = "";
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		String sql = "INSERT INTO board1(TITLE,MEMO) VALUES(?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, title);
		pstmt.setString(2, memo);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="index.jsp"; 

</script>
