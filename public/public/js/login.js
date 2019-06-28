$(function(){
  $("#mobile").blur(function(){
      var mobile=$('#mobile').value();
      var reg=/^1[3-8]\d{9}$/;
      if(!reg.test(mobile)){
          $('#mobile').siblings.children.toggleClass('wrong');
      }
  })
    var isRegister=true;//表示是否可注册，true为可注册，false不可以
    //验证重复用户名
    $("#mobile").blur(function(){
        var mobile=$("#mobile").val();
        $.ajax({
            type:"get",
            url:"php/checkUname.php",
            dataType:"json",
            data:{mobile:mobile},
            success:function(data){

                if(data.code>0){
                    $("#mobilewrong").removeClass("wrong");
                    $("#mobilewrong").addClass("wrong");
                    isRegister=true;
                }else{

                    $(".mind1").html("用户名已被占用");
                    isRegister=false;
                    $("#mobilewrong").addClass("false");
                    $("#mobilewrong").removeClass("true");
                }
            }
        });
    })
});