<%
String num1=request=request.getParameter("m1");
String num2=request=request.getParameter("m2");
String num3=request=request.getParameter("m3");
int a=integer.parseInt(num1);
int b=integer.parseInt(num2);
int c=integer.parseInt(num3);
int d=(a+b)/2;
int e=d+c;
out.println("The Roll NO# "+request.getParameter("m"));
out.println("has Scored "+e+" Internal Marks");
%>