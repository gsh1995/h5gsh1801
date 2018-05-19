       $(function(){
				var bstop=true;//不通过
				var num=/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
				$('#phonenum').on('blur',function(){
					var phonenum=$(this).val();//获取手机号
					if(phonenum!=''){//检测手机号是否为空
						if(num.test(phonenum)){//检测用户名是否满足正则
							//将当前的用户名给后端，后端和数据库进行匹配，不管是否存在，后端返回结果
							$.ajax({
								type:'post',
								url:'../php/registerp.php',
								data:{
									name:phonenum//获取用户名给后端
								},
								success:function(d){
									console.log(d)
									if(d){
										$('#phonenum').next('i').css('color','red').html('该手机号已经注册请直接登录');
										bstop=true;
									}else{
										$('#phonenum').next('i').css('color','green').css('font-size','20px').html('😰');
										bstop=false;
									}
								}
							})
						}else{
							$(this).parent().find('i').css('color','red').html('手机号格式不正确');
							bstop=true;
						}
					}else{
						$(this).parent().find('i').css('color','red').html('手机号不能为空');
						bstop=true;
					}
				});
		
		$('#password1').on('blur',function(){
			if($(this).val()==''){
			$(this).parent().find('i').css('color','red').html('密码不能为空,请输入');
  	   	  	  bstop=true;
			}else{
				$(this).parent().find('i').css('color','green').css('font-size','20px').html('😰');
  	   	  	  bstop=false;
			}
		})
		
		$('#queren').on('blur',function(){
  	   	  var password1=$('#password1').val();
  	   	  var password2=$(this).val();
  	   	  if(password1==''){
  	   	  	 $(this).parent().find('i').css('color','red').html('密码不能为空，请输入');
  	   	  	  bstop=true;
  	   	  }else if(password1!=password2){
  	   	  	  $(this).parent().find('i').css('color','red').html('两次密码不一样，请重新输入');
  	   	  	  bstop=true;
  	   	  }else if(password1==password2&&password1!==''){
  	   	  	  $(this).parent().find('i').css('color','green').css('font-size','20px').html('😰');
  	   	  	  bstop=false;
  	   	  }
        })
		
		$('#suijishu').on('click',function(){
				var sjs='';
		 for(var i=0;i<4;i++){
	      	 sjs+=ranNum(0,9);
	      }
	       $(this).html(sjs);
		})
		
		$('#yzm').on('blur',function(){
			if($(this).val()==''){
				$(this).parent().find('i').css('color','red').html('验证码不能为空，请输入');
				 bstop=true;
			}else if($(this).val()!=$('#suijishu').html()){
				$(this).parent().find('i').css('color','red').html('验证码输入错误');
				 bstop=true;
			}else if($(this).val()==$('#suijishu').html()){
				$(this).parent().find('i').css('color','green').css('font-size','20px').html('😰');
				bstop=false;
			}
		
		
		})

              function ranNum(min=0,max=9){
				return Math.round(Math.random()*(max-min+1))+min
			}
		 
				$('form').on('submit',function(){//验证不通过无法提交的
					if(bstop){
						return false;//阻止按钮跳转。
					}
				});
			});
			
  