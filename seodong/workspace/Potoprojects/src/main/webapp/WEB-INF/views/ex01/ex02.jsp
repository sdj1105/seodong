<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript">
     
     $(document).ready(function () { //강제로 실행할때
    	  test();
    	 
    	 //제이쿼리
    	 $("#test2").click(function () {
    		 InputValue($("#test1").val());
		});
    	 
      	 //제이쿼리
    	 $("#test3").click(function () {
        	 alert( $("select option:nth-child(7)").val() );
        	 
		});
    	 
    	 $("#selectBox").click(function () {
			alert($("select option:nth-child()").val());
		});	 

   	 	 
	});
	
     function InputValue(srt) {
		alert(srt);	
	}
     
     function test(srt) {
 		alert("안녕하세요");	
 	}

    
</script>

<title>Insert title here</title>
</head>
<body> 
    <input  id="test1" type="text">
    <input  id="test2" type="button" value="확인">
    
    <select id="selectBox">
       <option value="1">1</option>
       <option value="2">2</option>
       <option value="3">3</option>
       <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
       <option value="7">7</option>
       <option value="8">8</option>
       <option value="9">9</option>
       <option value="10">10</option>
    </select>
    
    <input  id="test3" type="button" value="확인">
    

    
</body>
</html>