$(function(){
  $("#mobile").blur(function(){
      var mobile=$('#mobile').value();
      var reg=/^1[3-8]\d{9}$/;
      if(!reg.test(mobile)){
          $('#mobile').siblings.children.toggleClass('wrong');
      }
  })
    var isRegister=true;//��ʾ�Ƿ��ע�ᣬtrueΪ��ע�ᣬfalse������
    //��֤�ظ��û���
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

                    $(".mind1").html("�û����ѱ�ռ��");
                    isRegister=false;
                    $("#mobilewrong").addClass("false");
                    $("#mobilewrong").removeClass("true");
                }
            }
        });
    })
});