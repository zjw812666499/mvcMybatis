$().ready(function(){
    $("#regFrom").validate({
        rules:{
            regusername: "required",
            regusername:{
                required: true,
                minlength: 4
            },
            regemail:{
                required: true,
                email: true
            },
            reguserPwd1:{
                required: true,
                minlength: 4
            },
            reguserPwd2:{
                required: true,
                minlength: 4,
                equalTo:"#reguserPwd1"
            }
           

        },
        messages: {
            regusername:{
                required: "请输入用户名",
                minlength:"用户名不得少于4个字母"
            },
            regemail:{
                required:"请输入邮箱",
                email: "请输入正确邮箱账号"
            },
            reguserPwd1 :{
                required: "请输入密码",
                minlength:"密码不得少于4个字母"
            },

            reguserPwd2:{
                required: "请输入验证密码",
                minlength :"验证密码不得少于4个字母",
                equalTo:"两次密码输入不一样"
            }
        }
        
    });
});

$(document).ready(function(){
    $("#toreg").click(function(){
        var username=$("#regusername").val();
        var pwd = $("#reguserPwd1").val();
        var email =$("#regemail").val();
        alert(username +";" + pwd+" ;"+ email);
    });
});