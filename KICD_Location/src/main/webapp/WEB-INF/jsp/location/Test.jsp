<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This is Test Page</title>
</head>
<body>
	<a href="#">버튼</a>

    <table border="1">
        <thead>
            <tr>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">비고</th>
            </tr>
        </thead>
        <tbody id="tbody">
        </tbody>
    </table>
    
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script>
    //페이지가 불러 졌을때
    $(document).ready(function() {
        alert('xxx');
        //비동기 통신
        $.ajax({
            type: "GET", //GET 타입
            url: "testAjaxDB.do", //URL 선언
            success: function(data) { //성공시 매개변수로 DATA를 받음
                //12번 눌러서 콘솔로 이동하면 json형태의 데이터 확인
                console.log(data);

                alert(data);
                //데이터의 크기만큼 돌려줌
                for (var str in data) {
                    //tr 태그를 생성해서 id에 tbody에 추가
                    var tr = $("<tr></tr>").appendTo("#tbody");
                    //tr에 td를 추가 후 내용을 데이터 값
                    $("<td></td>").text(data[str]['title']).appendTo(tr);
                    $("<td></td>").text(data[str]['author']).appendTo(tr);
                    $("<td></td>").text(data[str]['image']).appendTo(tr);
                }
            },
            error: function(error, eee, xxx) {
                alert("오류 발생" + error + eee + xxx);
            }
        });
    });

	</script>
	
</body>
</html>