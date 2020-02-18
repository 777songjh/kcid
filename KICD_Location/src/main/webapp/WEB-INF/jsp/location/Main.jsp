<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <style type="text/css">
      html { font-family:Calibri, Arial, Helvetica, sans-serif; font-size:11pt; background-color:white }
      a.comment-indicator:hover + div.comment { background:#ffd; position:absolute; display:block; border:1px solid black; padding:0.5em }
      a.comment-indicator { background:red; display:inline-block; border:1px solid black; width:0.5em; height:0.5em }
      div.comment { display:none }
      table { border-collapse:collapse; page-break-after:always }
      .gridlines td { border:1px dotted black }
      .gridlines th { border:1px dotted black }
      .b { text-align:center }
      .e { text-align:center }
      .f { text-align:right }
      .inlineStr { text-align:left }
      .n { text-align:right }
      .s { text-align:left }
      td.style0 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style0 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style1 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:2px solid #000000 !important; border-left:2px solid #000000 !important; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style1 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:2px solid #000000 !important; border-left:2px solid #000000 !important; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style2 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:2px solid #000000 !important; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style2 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:2px solid #000000 !important; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style3 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:2px solid #000000 !important; border-left:none #000000; border-right:2px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style3 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:2px solid #000000 !important; border-left:none #000000; border-right:2px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style4 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:2px solid #000000 !important; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style4 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:2px solid #000000 !important; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style5 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style5 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style6 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style6 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style7 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:2px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style7 { vertical-align:middle; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:2px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style8 { vertical-align:middle; border-bottom:2px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style8 { vertical-align:middle; border-bottom:2px solid #000000 !important; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style9 { cursor:pointer; vertical-align:middle; text-align:center; border-bottom:1px solid #000000 !important; border-top:1px solid #000000 !important; border-left:1px solid #000000 !important; border-right:1px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style9 { cursor:pointer; vertical-align:middle; text-align:center; border-bottom:1px solid #000000 !important; border-top:1px solid #000000 !important; border-left:1px solid #000000 !important; border-right:1px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style10 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:1px solid #000000 !important; border-left:1px solid #000000 !important; border-right:1px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style10 { vertical-align:middle; border-bottom:1px solid #000000 !important; border-top:1px solid #000000 !important; border-left:1px solid #000000 !important; border-right:1px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      td.style11 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:36pt; background-color:white }
      th.style11 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:none #000000; color:#000000; font-family:'맑은 고딕'; font-size:36pt; background-color:white }
      td.style12 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:2px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:36pt; background-color:white }
      th.style12 { vertical-align:middle; text-align:center; border-bottom:none #000000; border-top:none #000000; border-left:none #000000; border-right:2px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:36pt; background-color:white }
      td.style13 { vertical-align:middle; text-align:center; border-bottom:1px solid #000000 !important; border-top:1px solid #000000 !important; border-left:1px solid #000000 !important; border-right:1px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      th.style13 { vertical-align:middle; text-align:center; border-bottom:1px solid #000000 !important; border-top:1px solid #000000 !important; border-left:1px solid #000000 !important; border-right:1px solid #000000 !important; color:#000000; font-family:'맑은 고딕'; font-size:11pt; background-color:white }
      table.sheet0 col.col0 { width:52pt }
      table.sheet0 col.col1 { width:42pt }
      table.sheet0 col.col2 { width:42pt }
      table.sheet0 col.col3 { width:42pt }
      table.sheet0 col.col4 { width:42pt }
      table.sheet0 col.col5 { width:42pt }
      table.sheet0 col.col6 { width:42pt }
      table.sheet0 col.col7 { width:42pt }
      table.sheet0 col.col8 { width:42pt }
      table.sheet0 col.col9 { width:42pt }
      table.sheet0 col.col10 { width:42pt }
      table.sheet0 tr { height:15pt }
      table.sheet0 tr.row6 { height:7.5pt }
      table.sheet0 tr.row11 { height:17.25pt }
    </style>
<title>경인지사 Yard Loacation - YL_MAIN</title>
</head>
<body>
<style>
@page { margin-left: 0.7in; margin-right: 0.7in; margin-top: 0.75in; margin-bottom: 0.75in; }
body { margin-left: 0.7in; margin-right: 0.7in; margin-top: 0.75in; margin-bottom: 0.75in; }
</style>
    <table border="0" cellpadding="0" cellspacing="0" id="sheet0" class="sheet0 gridlines">
        <col class="col0">
        <col class="col1">
        <col class="col2">
        <col class="col3">
        <col class="col4">
        <col class="col5">
        <col class="col6">
        <col class="col7">
        <col class="col8">
        <col class="col9">
        <col class="col10">
        <tbody>
          <tr class="row0">
            <td class="column0 style1 s style3" colspan="11">YARD LOCATION</td>
          </tr>
          <tr class="row1">
            <td class="column0 style4 s">장비번호</td>
            <td class="column1 style5 s">-</td>
            <td class="column2 style6 null style6" colspan="2"><input type = "text" id = "main_no" placeholder="장비번호"></td>
            <td class="column4 style5 null"></td>
            <td class="column5 style11 s style12" colspan="6" rowspan="5">SEBANG</td>
          </tr>
          <tr class="row2">
            <td class="column0 style4 s">직번</td>
            <td class="column1 style5 s">-</td>
            <td class="column2 style6 null style6" colspan="2"><input type = "text" id = "main_id" placeholder="직번"></td>
            <td class="column4 style5 null"></td>
          </tr>
          <tr class="row3">
            <td class="column0 style4 s">비밀번호</td>
            <td class="column1 style5 s">-</td>
            <td class="column2 style6 null style6" colspan="2"><input type = "password" id = "main_pw" placeholder="비밀번호"></td>
            <td class="column4 style5 null"></td>
          </tr>
          <tr class="row4">
            <td class="column0 style4 s">블록</td>
            <td class="column1 style5 s">-</td>
            <td class="column2 style6 null style6" colspan="2"><input type = "text" id = "main_block" placeholder="블록"></td>
            <td class="column4 style5 null"></td>
          </tr>
          <tr class="row5">
            <td class="column0 style4 s">BAY</td>
            <td class="column1 style5 s">-</td>
            <td class="column2 style6 null style6" colspan="2"><input type = "text" id = "main_bay" placeholder="BAY"></td>
            <td class="column4 style5 null"></td>
          </tr>
          <tr class="row6">
            <td class="column0 style4 null"></td>
            <td class="column1 style5 null"></td>
            <td class="column2 style5 null"></td>
            <td class="column3 style5 null"></td>
            <td class="column4 style5 null"></td>
            <td class="column5 style5 null"></td>
            <td class="column6 style5 null"></td>
            <td class="column7 style5 null"></td>
            <td class="column8 style5 null"></td>
            <td class="column9 style5 null"></td>
            <td class="column10 style7 null"></td>
          </tr>
          <tr class="row7">
            <td class="keyBoard column0 style9 s" id="row7col0" data-name="A">A</td>
            <td class="keyBoard column0 style9 s" id="row7col1" data-name="B">B</td>
            <td class="keyBoard column0 style9 s" id="row7col2" data-name="C">C</td>
            <td class="keyBoard column0 style9 s" id="row7col3" data-name="D">D</td>
            <td class="keyBoard column0 style9 s" id="row7col4" data-name="E">E</td>
            <td class="keyBoard column0 style9 s" id="row7col5" data-name="F">F</td>
            <td class="keyBoard column0 style9 s" id="row7col6" data-name="G">G</td>
            <td class="keyBoard column0 style9 s" id="row7col7" data-name="H">H</td>
            <td class="keyBoard column0 style9 s" id="row7col8" data-name="I">I</td>
            <td class="keyBoard column0 style9 s" id="row7col9" data-name="S">S</td>
            <td class="column10 style10 null"></td>
          </tr>
          <tr class="row8">
            <td class="column0 style9 s">W</td>
            <td class="column1 style9 s">X</td>
            <td class="column2 style9 s">Z</td>
            <td class="column3 style9 null"></td>
            <td class="column4 style9 null"></td>
            <td class="column5 style9 null"></td>
            <td class="column6 style9 null"></td>
            <td class="column7 style9 null"></td>
            <td class="column8 style9 null"></td>
            <td class="column9 style9 null"></td>
            <td class="column10 style10 s">&lt;-</td>
          </tr>
          <tr class="row9">
            <td class="column0 style9 n">0</td>
            <td class="column1 style9 n">1</td>
            <td class="column2 style9 n">2</td>
            <td class="column3 style9 n">3</td>
            <td class="column4 style9 n">4</td>
            <td class="column5 style9 n">5</td>
            <td class="column6 style9 n">6</td>
            <td class="column7 style9 n">7</td>
            <td class="column8 style9 n">8</td>
            <td class="column9 style9 n">9</td>
            <td class="column10 style10 null"></td>
          </tr>
          <tr class="row10">
            <td class="column0 style4 null"></td>
            <td class="column1 style5 null"></td>
            <td class="column2 style5 null"></td>
            <td class="column3 style5 null"></td>
            <td class="column4 style5 null"></td>
            <td class="column5 style5 null"></td>
            <td class="column6 style5 null"></td>
            <td class="column7 style5 null"></td>
            <td class="column8 style5 null"></td>
            <td class="column9 style5 null"></td>
            <td class="column10 style7 null"></td>
          </tr>
          <tr class="row11">
            <td class="column0 style13 s style13" colspan="2">종료</td>
            <td class="column2 style8 null"></td>
            <td class="column3 style8 null"></td>
            <td class="column4 style8 null"></td>
            <td class="column5 style8 null"></td>
            <td class="column6 style13 s style13" colspan="2">하차작업</td>
            <td class="column8 style8 null"></td>
            <td class="column9 style13 s style13" colspan="2">상차작업</td>
          </tr>
        </tbody>
    </table>
    <!-- 
		<h3>YARD LOCATION</h3>
		<input type = "text" id = "m_id" placeholder="아이디"><br>
		<input type = "password" id = "m_pw" placeholder="비밀번호"><br>
		<button id = "login_process">로그인</button>
		 -->
		<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
		<script>
		var focusCtrlID;
		$(document).ready(function(){
			$("input[type=text], textarea")
				.bind("focus", function(){
					focusCtrlID = this.id;
					window.KCID_APP.DisableAppButton();
			});

			$("input[type=text], textarea")
				.bind("blur", function(){
					window.KCID_APP.AbleAppButton();
			});
			
			
			
			// 키보드 클릭시 포커스의  input 에 값을 집어넣자
			$('.keyBoard').click(function(){				
				if(focusCtrlID == null) {					
					alert('입력할 항목을 선택하세요!!!');
					return;
				}
				
				var name = $('#' + this.id).data('name');
				//alert(name);
				var nowVal = $('#' + focusCtrlID).val();
				$('#' + focusCtrlID).val(nowVal + name);
			});
			
			
			
			$("#login_process").click(function(){
				var json = {
					id : $("#m_id").val(),
					pw : $("#m_pw").val()
				};
				
				for(var str in json){
					if(json[str].length == 0){
						alert($("#" + str).attr("placeholder") + "를 입력해주세요.");
						$("#" + str).focus();
						return;
					}
				}
				
				 $.ajax({
					type : "post",
					url : "login.do",
					data : json,
					success : function(data) {
						console.log("ajax OK");
						switch (Number(data)) {
						case 0:
							alert("아이디 또는 비밀번호가 일치하지 않습니다.");
							break;
						case 1:
							window.location.href = "main.do";

						default:
							break;
						}
					},
					error : function(request, status, error) {
						console.log("ajax error : " + request + "::" + status + "::" + error);
						alert("오류 발생 "+ request + "::" + status + "::" + error);
					}
				});
			});
		});
		</script>

</body>
</html>