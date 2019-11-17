<%@page import="AppBean.AppFormDao"%>  
<jsp:useBean id="u" class="AppBean.AppFormBean"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=AppFormDao.update(u);  
response.sendRedirect("view.jsp");  

%>  