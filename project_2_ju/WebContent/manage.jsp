<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������������</title>
</head>
<style>

img.icon {
		position: absolute;
		left: 200px;
		top: 60px;
	}
	
	li {
 	    float: left;
   	    display: block;
	    padding: 10px 26px;
	    font-size: 18px;
	}

	a {
		text-decoration: none;
		color: black;
	}
	
	ul.menu {
		position: absolute;
		list-style-type: none;
		margin: 0;
		padding: 0;
		top: 60px;
		left: 530px;
	}
	
	li a:hover {
	 	color: #56BEC0;
	 	font-weight: bold;
	}
	
	hr.mint {
		background-color: #56BEC0;
		height: 3px;
		margin-top: 120px;
	}
	
	ul.login {
		position: absolute;
		list-style-type: none;
		margin: 0;
		padding: 0;
		top: 60px;
		right: 200px;
	}
	
	ul.login li {
		 padding: 12px 5px;
		 font-size: 14px;
	}
	
	hr.gray {
		background-color: D9D9D9;
		height: 1px;
	}
	
	#banner {width: 5000px;}
	
	 #frame {
        width: 1130px;
        position: relative;
        overflow: hidden;
    }
    
    table {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 70%; /* ���̺� �ʺ� �����Ͽ� ������ ũ��� �����մϴ� */
	    max-height: 400px; /* �ִ� ���̸� �����Ͽ� ��ũ���� ��Ÿ������ �մϴ� */
	    overflow-y: auto; /* ���� ��ũ���� �ʿ��� ���� ��ũ���� ��Ÿ������ �մϴ� */
	    border-collapse: collapse; /* ���̺� ��踦 �����Ͽ� ���� ��輱���� ����ϴ� */
	    border: 1px solid black; /* ���̺��� ��輱�� �����մϴ� */
	}
	
	.body {
	    position: relative; /* �θ� ����� ����� ��ġ ���� */
	    padding-top: 200px; /* ��� �Ʒ� ������ �����մϴ� */
	}
	
	caption {
   	    margin-bottom: 50px; /* ĸ�� �Ʒ� ������ �߰��Ͽ� ���򼱰��� ������ �����մϴ� */
	}
		
	thead {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 70%; /* ���̺� �ʺ� �����Ͽ� ������ ũ��� �����մϴ� */
	    border-bottom: none; /* thead�� �Ʒ��� ��輱�� ���۴ϴ� */
	}
	
	thead tr {
	    display: flex;
	    align-items: center;
	}
	
	thead select, thead input[type="text"], thead input[type="submit"] {
	    margin-right: 10px; /* ��ҵ� ������ �����մϴ� */
	}
	
	tbody {
/*    	    border: 1px solid black; /* ���̺� ������ ��輱�� �߰��մϴ� */ */
	}
	

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function selectCategory(frm) {
		var checkCategory = frm.idx.value;
		if ("����" == checkCategory) {
			alert("�˻������� �������ּ���!");
			return;
		}
		
// 		if (checkCategory.trim().length == 0) {
// 			alert("���̵� �Է����ּ���!");
// 			return false;
// 		}
		
		var idx = frm.idx.value; // idx �� ��������
	    var keyword = frm.keyword.value; // keyword �� ��������
	    
		$.ajax ({
			type: "POST",
			url: "ajaxManageController",
			data: {
				action: "manageCategory",
				idx: idx,
				keyword: keyword
				
			},
			dataType: "json",
			success : function(respData){
				alert("Ajax ó�� ���� - ������������� : " + respData);
// 				JSON.stringify(obj)
				console.log(respData); //JSON ��ü 1��
				console.log(respData.list); //�迭������
				
				//Json������ó��
				let htmltag = "";
				
				for (member of respData.list) {
					htmltag += "<div id=" + member.table + ">";
					if ("review".equals(member.table)) {
						htmltag += "<tr>";
						htmltag += "<td>" + member.rvNo + "</td>";
						htmltag += "<td>" + member.mvNo + "</td>";
						htmltag += "<td>" + member.no + "</td>";
						htmltag += "<td>" + member.rvNick + "</td>";
						htmltag += "<td>" + member.rvTitle + "</td>";
						htmltag += "<td>" + member.rvContent + "</td>";
						htmltag += "<td>" + member.rvDate + "</td>";
						htmltag += "<td>" + member.rvRec + "</td>";
					}
					
					if ("movie".equals(member.table)) {
						htmltag += "<tr>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
					}
					
					if ("movie".equals(member.table)) {
						htmltag += "<tr>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
						htmltag += "<td>" + member.table + "</td>";
					}
				}
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax ó�� ���� : \n"
						+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
						+ "textStatus : " + textStatus + "\n"
						+ "errorThrown : " + errorThrown);
				return false;
			}
		});
	}
</script>
<body>
    <div class="header">
    	<a href="main.jsp">
    		<img class= "icon" src="img/moviechoice.png">
		</a>
    	
        <ul class="menu">
          <li><a href="main.jsp">��ȭ��� ����</a></li>
          <li><a href="reviewMain.jsp">������� ����</a></li>
          <li><a href="free.jsp">�����Խ��� ����</a></li>
          <li><a href="about.asp">Q & A ����</a></li>
          <li><a href="about.asp">Review Of The Month ����</a></li>
          <li><a href="about.asp">��а� ����</a></li>
          <li><a href="about.asp">���� ����</a></li>
        </ul>
        <hr class="mint">
    </div>
    <div class="body">
        <form method="post">
            <table>
                <caption><h2>������ �˻�</h2></caption>
                <thead> 
                    <tr>
                        <td>
                            <select name="idx">
                                <option selected disabled>����</option>
                                <option value="0">��ü</option>
                                <option value="1">����</option>
                                <option value="2">��ȭ</option>
                                <option value="3">����</option>
                            </select>
                        </td>
                        <td><input type="text" name="keyword"/></td>
                        <td><input type="submit" value="�˻�" onclick="selectCategory(this.form)"/></td>
                    </tr>
                </thead>
                <tbody class="jsonData">
                	<tr>
                		<td>�˻� ����� �����ϴ�</td>
                	</tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>
