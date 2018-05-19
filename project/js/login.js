	function addCookie(key,value,day){
					var date=new Date();//创建日期对象
					date.setDate(date.getDate()+day);//过期时间：获取当前的日期+天数，设置给date
					document.cookie=key+'='+encodeURI(value)+';expires='+date;//添加cookie，设置过期时间
				}
				$('#subbnt').on('click',function(){
					var $pnum=$('#shoujihao').val();//用户名
					var $pasd=$('#mima').val();//密码
				
					$.ajax({
						type:'post',
						url:'../php/login.php',
						data:{//将用户名和密码传输给后端
							name:$pnum,
							pass:$pasd
						},
						success:function(d){//请求成功，接收后端返回的值
							if(d){//成功
								addCookie('Phonenum',$pnum,7);
								location.href='../html/index.html';
							}else if(!d){//用户名或者密码错误
								$('#baocuo').html('用户名或者密码错误');
								$('#mima').val('');
								
							}
						}
					})
				});
				
        $('#n').on('click',function(){
        	$(this).addClass('ddd').siblings('span').removeClass('ddd');
        	$('#dada').css('display','block').siblings('#zizi').css('display','none');
        	
        });
         $('#e').on('click',function(){
        	$(this).addClass('ddd').siblings('span').removeClass('ddd');
        	$('#dada').css('display','none').siblings('#zizi').css('display','block');
        })