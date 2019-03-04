

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cognizant.bean.Grizz"%>
<%@page import="com.cognizant.dao.GrizzDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>insert</title>
</head>
<body>
<%
 String username=request.getParameter("username");
try{
	GrizzDAO grDAO= new GrizzDAO();
    Grizz gr=new Grizz();
    gr.setId(Integer.parseInt(request.getParameter("id")));
    gr.setName(request.getParameter("name"));
    gr.setCategory(request.getParameter("category"));
    gr.setDescription(request.getParameter("description"));
    gr.setPrice(Integer.parseInt(request.getParameter("price")));
 
    int in=0;
    in=grDAO.insert1(gr);
    in=grDAO.insert(gr);
   if(in==0)
   {
	   out.println("error");
   }
	   else
			
		{
			response.sendRedirect("list.jsp?username='"+username+"'");
		}

} catch (Exception e) {
	out.println(e.getMessage());
}


%>

</body>
</html>