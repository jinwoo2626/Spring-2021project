<%@page import="yuhan.mvc.teamproject.dto.UserInfo"%>
<%@ page language="java"
contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script language = "javascript">  
function writeCheck()
  {
   var form = document.update;
     
   if( !form.user_pwd.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.user_pwd.focus();
    return;
   }
   
  if( !form.user_name.value )
   {
    alert( "이름을 적어주세요" );
    form.user_name.focus();
    return;
   }
  if( !form.user_email.value )
  {
   alert( "이메일을 적어주세요" );
   form.user_email.focus();
   return;
  }
  if( !form.user_phone.value )
  {
   alert( "전화번호를 적어주세요" );
   form.user_phone.focus();
   return;
  }

  form.submit();
  }
 </script>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 </title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title></title>
      <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>   
        	#a2{
			font-size:20px;
			}
            .menu1{
                width:100%;
                height:50px;                      
            }         
            a{
                text-decoration:none;
                color:black;                
            }
           	.menu1 ul{
           		padding:0;
           	}
            .menu1 ul li{
                float:left;
                width:25%;
                height:100%;
                line-height:50px;
                text-align:center;
                background:purple;   
                 list-style:none;   
                       
            }
           
            .Menu1 ul li a{
                display:block;
            }
            .Menu1 ul li a:hover {
                background:mediumpurple;
            }
            .middle_slider{
                width : 80%;
                height : 300px;
                background-color :red; 
                               
            }
            .middle_and_right{
                width : 20%;
                
                height : 300px;
                background-color :aquamarine;                
                
            }
            .listDiv div{                
                float : left;            
            }
            .div_right{
                float : right;
            }
            .listDiv2 div{                
                float : left;
                margin-top: 20px;
                padding : 20px;
                
            }
            .bottom_div1{
                background-color : beige;
                width : 30%;
                height : 250px; 
                margin-right : 30px;
            
            }
            .bottom_div2{
                background-color : red;
                width : 20%;
                height : 150px;
                margin-right : 30px;
            }
            .bottom_div3{
                background-color : lightskyblue;
                width : 25%;
                height: 250px;
                margin-right : 30px;                
                
            }
                     
            .top_1{
                width:100%; 
                height: 60px;
                vertical-align: center;
              	float:left;
              	margin-bottom:5px;
                
            }
          
            .table_width{
            	width:100%;
            }
            .container {
 			 padding-right: 15px;
 			 padding-left: 15px;
 			 margin-right: auto;
 			 margin-left: auto;
 			 width : 1050px;
 			 height : 700px;		
			}	
		.nav{
			height:50px;
			align-content: center;
			background-color:red; 
		}
		.btn {
		
			width:80px;
			heigth:5px;
		    background-color: #aaaaaa;
		    border: none;
   			color:#fff;
   			padding: 10px 0;
   			text-align: center;
   			text-decoration: none;
   			display: inline-block;
   			font-size: 15px;
		   	margin: 4px;
 			cursor: pointer;
			}		
		.top_1_right{
			float:right;
			text-align:right;
		}
		input{
		border-radius: 7px;
		}
        </style>
        
    </head>
    <body>    
    <% 
    UserInfo userinfo = (UserInfo)session.getAttribute("userInfo");
    String id = (String)session.getAttribute("user_id");
    String nick = (String)session.getAttribute("user_name");

    if(userinfo==null){ %>
    <div class="container" >
    <!--맨위 배너 들어가고 길게 라인 있을곳-->
        <div class="top_1">
 			<input type="button" class="btn" value="메인" onclick="location.href='home'">
 			 <div class="top_1_right">
             <input type="button" class="btn" value="로그인" onclick="location.href='login'">
             <input type="button" class="btn" value="회원가입" onclick="location.href='join'">
           </div>      
     </div><br><br>   
    <%}
    else{ %>
    <div class="container" >
    <!--맨위 배너 들어가고 길게 라인 있을곳-->
        <div class="top_1">      
        <input type="button" class="btn" value="메인" onclick="location.href='home'">
            <div class="top_1_right"> <%= userinfo.getUser_name()   %>님 반갑습니다.<br><input type="button" value="회원정보" class="btn" onclick="location.href='userinfomation'">
            <input type ="button" value="로그아웃"  class="btn" onclick="location.href='logout'"></div>
        </div>  
       <br> <br>  
     <%} %>
   
    <!--메뉴-->
        <div class = "menu1">
        <ul>
            <a href="HardWarelist"><li>하드웨어</li></a>
            <a href="SoftWarelist"><li>소프트웨어</li></a>
            <a href="list"><li>자유게시판</li></a>
            <a href="#"><li>기타</li></a>
        </ul>
        </div>
<form name=update method=post action="updatelater">
<center><p id="a2">회원정보</p></center>
<table align="center">
<td id="a2">아이디</td>
<td>${updatebeforeservice.user_id}</td>
</tr>
<tr>
<td id="a2">비밀번호</td>
<td><input type="text" name="user_pwd" value="${updatebeforeservice.user_pwd}"></td>
</tr>
<tr>
<td id="a2">성명</td>
<td><input type="text" name="user_name" value="${updatebeforeservice.user_name}"></td>
</tr>
<tr>
<td id="a2">이메일</td>
<td><input type="text" name="user_email" value="${updatebeforeservice.user_email}"></td>
</tr>
<tr>
<td id="a2">전화번호</td>
<td><input type="text" name="user_phone" value="${updatebeforeservice.user_phone}"></td>
</tr>
<tr>
<td>&nbsp;</td><td align="right">
<input type=button value="수정하기" class="btn btn-primary" style="width:130px;" OnClick="javascript:writeCheck();">
<input type=button value="뒤로가기" class="btn btn-secondary" style="width:90px;"OnClick="javascript:history.back(-1)"></td>
 </td>
</tr>
</table>
</form>
</body>
</html>