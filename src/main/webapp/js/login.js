// $.validator.setDefaults({
//    // $.validator.setDefaults
//     submitHandler:function(){
//         var username = $("#username").val();
//         var userPwd = $("#userPwd").val();
//         alert("提交事件用户名: " + username + "密码 " + userPwd);
//     }
// });

$().ready(function(){
    $("#loginFrom").validate({
        rules:{
            username: "required",
            username:{
                required: true,
                minlength: 4
            },
            userPwd:{
                required: true,
                minlength: 4
            }
        },
        messages: {
            username:{
                required: "请输入用户名",
                minlength:"用户名不得少于4个字母"
            },
            userPwd :{
                required: "请输入密码",
                minlength:"密码不得少于4个字母"
            }
        }
        
    });
});

$(document).ready(function(){
    $("#tologinid").click(toLogin);
});

function toLogin(){
    var username=$("#username").val();
    var pwd = $("#userPwd").val();
    var url = 'login.do';
    var params={
		'username':username,
		'pwd': pwd
    };
	$.post(url,params,function(result){
		
		if(result.state == 1){
			if(result.data.pwd==pwd){
				alert("密码正确");
			}else{
				alert("密码错误");
			}
		}else{
			alert("登录失败");
		}	
	});
}

//$(document).ready(function(){
//	//回车登录
//	$(document).keyUp(function(event){
//		if(event.keyCode == 13){
//			$("#btn-login").trigger("click");
//		}
//	});
//	//点击登录按钮登录
//	 $("#tologinid").click(toLogin);
//});

//function toLogin(){
//	 var username=$("#username").val();
//	 var pwd = $("#userPwd").val();
//	 alert(username +";" + pwd);
////	var params={
////			'username':username,
////			'pwd': pwd
////	}
////	var url = 'login.do'
////	$.post(url,params,function(result){
////		
////		if(result.state == 1){
////			alert("success");
////		}else{
////			alert("登录失败");
////		}	
////	});
//}
//
//
//
//
////function tocheckPwd(result){
////	if(result.pwd == pwd){
////		location.href='loginUI.do'
////	}else{
////		alert("密码错误");
////	}
////}

