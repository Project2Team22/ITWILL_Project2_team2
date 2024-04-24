<%@page import="com.mystudy.post.common.Paging"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Paging p = new Paging();

	
%>
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

#banner {
	width: 5000px;
}

#frame {
	width: 1130px;
	position: relative;
	overflow: hidden;
}

table {
/* 	position: absolute; */
	top: 50%;
	left: 50%;
  	transform: translate(200px, -10px);  
  	margin-top: -10%;
  	margin-right: 15px;
	width: 80%;
	max-height: 400px;
	overflow-y: auto;
	border-collapse: collapse;
	border: 1px solid black;
}

.body {
	position: relative;
	padding-top: 200px;
}

caption {
	margin-bottom: 50px;
}

th, td {
    border: 1px solid black; /* ���̺� ��輱 ���� */
    padding: 8px; /* �� ���� ���� ���� */
    text-align: center; /* ��� ���� */
}

thead {
/* 	position: absolute; */
/* 	top: 50%; */
/* 	left: 50%; */
/* 	transform: translate(-50%, -50%); */
/* 	width: 70%; */
 	border: 1px solid black;  
}

thead tr, thead td{
	display: flex;
	align-items: center;
	border: none; 
}

thead select, thead input[type="text"], thead input[type="submit"] {
	margin-right: 10px;
}

tbody th tr td{
	border: 1px solid black; 
	
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function delete(frm, table, param) {
	if ("review" === table) {
		
	}
	
	if ("movie" === table) {
		console.log("��ȭ����");
		frm.action="controller?type=movieDelete&mvNo="+param;
		frm.submit();
	}
	
	if ("account" === table) {
		console.log("��������");
		frm.action="loginController?type=";
		frm.submit();
	}
}
function update(frm, table, param) {
	if ("review" === table) {
		
	}
	
	if ("movie" === table) {
		console.log("��ȭ����");
		frm.action="controller?type=movieFix&mvNo="+param;
		frm.submit();
	}
	
	if ("account" === table) {
		console.log("��������");
		frm.action="loginController?type=";
		frm.submit();
	}
}
function selectCategory(frm) {
	var checkCategory = frm.idx.value;
	if ("����" == checkCategory) {
		alert("�˻������� �������ּ���!");
		return;
	}
	
	var idx = frm.idx.value;
    var keyword = frm.keyword.value;
    
    $.ajax({
        type: "POST",
        url: "ajaxManageController",
        data: {
            action: "manageCategory",
            idx: idx,
            keyword: keyword
        },
        dataType: "json",
        success: function(respData) {
            console.log("Ajax ó�� ���� - �������������:", respData);

            // ���̺� ��� ����
            let htmltag = "";
            var checkMovie = 1;
            var checkReview = 1;
            var checkAccount = 1;
//             if (check of respData.listSearch) {
//             htmltag += "<table border='1'><thead><tr><th>���̺�</th><th>��ȭ ��ȣ</th><th>����</th><th>����</th><th>���</th><th>�帣</th><th>����</th><th>������ ��</th><th>���</th><th>������</th><th>������</th></tr></thead><tbody>";
//             }
//             if ()
            // ��ȭ ������ �ݺ� ó��
            if (respData.length === 0) {
                // �˻� ����� ���� ��
                htmltag += "<tr><td colspan='11'>�˻� ����� �����ϴ�.</td></tr>";
            } else {
                // �˻� ����� ���� ��
                for (let member of respData.listSearch) {
                	respData.listSearch.sort((a, b) => {
                	    if (a.warn > b.warn) return -1; // ������������ ����
                	    if (a.warn < b.warn) return 1;  // ������������ ����
                	    return 0; // ���� ���
                	});

                	console.log("sort : ", respData);
					if (member.table === "review") {
						console.log("����html");
						if (checkReview > 0) {
							htmltag += "<tr><th>���̺�</th><th>���� ��ȣ</th><th>��ȭ ��ȣ</th><th>���� ��ȣ</th><th>���� �г���</th><th>���� ����</th><th>���� ����</th><th>���� �ۼ���</th><th>���� ��õ��</th><th>�Ű� ��</th><th>����</th></tr>";
						}
						htmltag += "<tr class='" + member.table + "'>";
						htmltag += "<td>" + member.table + "</td>";
			            htmltag += "<td>" + member.rvNo + "</td>";
			            htmltag += "<td>" + member.mvNo + "</td>";
			            htmltag += "<td>" + member.no + "</td>";
			            htmltag += "<td>" + member.rvNick + "</td>";
			            htmltag += "<td>" + member.rvTitle + "</td>";
			            htmltag += "<td>" + member.rvContent + "</td>";
			            htmltag += "<td>" + member.rvDate + "</td>";
			            htmltag += "<td>" + member.rvRec + "</td>";
			            htmltag += "<td>" + member.warn + "</td>";
			            htmltag += "<td><input type='button' value='����' onclick='delete(this.form, review)'>";
			            htmltag += "<input type='button' value='����' onclick='updateReview(this.form)'></td>";
			            htmltag += "</tr>";
			            
			            checkReview--;
						checkMovie = 1;
						checkAccount = 1;
			        }
			        
			        if (member.table === "movie") {
			        	console.log("��ȭhtml");
						if (checkMovie > 0) {
							htmltag += "<tr><th>���̺�</th><th>��ȭ ��ȣ</th><th>����</th><th>����</th><th>���</th><th>�帣</th><th>����</th><th>������ ��</th><th>���</th><th>������</th><th>������</th><th>����</th></tr>";
						}
			        	htmltag += "<tr class='" + member.table + "'>";
			            htmltag += "<td>" + member.table + "</td>";
			            htmltag += "<td>" + member.mvNo + "</td>";
			            htmltag += "<td>" + member.mvTitle + "</td>";
			            htmltag += "<td>" + member.mvDirect + "</td>";
			            htmltag += "<td>" + member.mvActor + "</td>";
			            htmltag += "<td>" + member.mvGenre + "</td>";
			            htmltag += "<td>" + member.mvRate + "</td>";
			            htmltag += "<td>" + member.mvAudience + "</td>";
			            htmltag += "<td>" + member.mvGrade + "</td>";
			            htmltag += "<td>" + member.mvDate + "</td>";
			            htmltag += "<td><img src='img/" + member.mvPoster + "' width='200'></td>";
			            htmltag += "<td colspan='2'><input type='button' value='����' onclick='delete(this.form, movie, " + member.mvNo + ")'>";
			            htmltag += "<input type='button' value='����' onclick='update(this.form, movie, " + member.mvNo + ")'></td>";
			            htmltag += "</tr>";
			            
			            checkMovie--;
			            checkReview = 1;
			            checkAccount = 1;
			        }
			        
			        if (member.table === "account") {
			            console.log("����html");
			            if (checkAccount > 0) {
			                htmltag += "<tr><th>���̺�</th><th>���� ��ȣ</th><th>���� �̸�</th><th>���� ���̵�</th><th>���� �г���</th><th>��а� ����</th><th>�̸���</th><th>�Ű� ��</th><th>����</th></tr>";
			            }
			            htmltag += "<tr class='" + member.table + "'>";
			            htmltag += "<td>" + member.table + "</td>";
			            htmltag += "<td>" + member.no + "</td>";
			            htmltag += "<td>" + member.name + "</td>";
			            htmltag += "<td>" + member.id + "</td>";
			            htmltag += "<td>" + member.nick + "</td>";
			            htmltag += "<td>" + member.critic_check + "</td>";
			            htmltag += "<td>" + member.email + "</td>";
			            htmltag += "<td>" + member.warn + "</td>"; 
			            htmltag += "<td colspan='2'><input type='button' value='����' onclick='deleteAccount(this.form, account)'>";
			            htmltag += "<input type='button' value='����' onclick='updateAccount()'></td>";
			            htmltag += "</tr>";

			            checkAccount--;
			            checkReview = 1;
			            checkMovie = 1;
			        }
				}
            }
//             htmltag += "</tbody>";

            // ���̺��� #jsonData ������Ʈ�� �߰�
            $('#jsonData').html(htmltag);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("Ajax ó�� ����:\n" +
                "jqXHR.readyState: " + jqXHR.readyState + "\n" +
                "textStatus: " + textStatus + "\n" +
                "errorThrown: " + errorThrown);
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
          <li><a href="mainAdmin.jsp">��ȭ��� ����</a></li>
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
                        <td><input type="button" value="�˻�" onclick="selectCategory(this.form)"/></td>
                    </tr>
                </thead>
                <tbody id="jsonData">
                	<tr>
                		<td>�˻� ����� �����ϴ�.</td>
                	</tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>
