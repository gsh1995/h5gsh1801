//添加小三角形
	$(function () {
		$('#code').hover(function () {
			$('#code a span').removeClass('triangle-down').addClass('triangle-up');
		},function () {
			$('#code a span').removeClass('triangle-up').addClass('triangle-down');
		});

	});
	
	//个logo导航添加类
	$(function () {
		$('#naver_list li a').hover(function () {
			$(this).addClass('hover');
		},function () {
			$(this).removeClass('hover');
		});

	});
	
	//进入搜索框默认的标识消失
	$(function(){
		$('.text').focus(function(){
         $(".key").css({"display":"none"})
       });
        $('.text').blur(function(){
         $(".key").css({"display":"block"})
       })
	})
       
    
       // 轮播图
	  $(function() {
        var $num = 0;
        var $timer=null;
        $('.bannerbtn li').mousemove(function() {
                $num = $(this).index();
                tab();
        });
        //自动轮播    
         $timer=setInterval(zi,4000); 
          function zi(){
          	  $num++;
          	   if($num==8){
          	   	 $num=0;
          	   	  tab();
          	   }
          	  tab();
          }
        //鼠标进入图片轮播停止，鼠标移出图片轮播开始  	         
       $('.bannerimg li').hover(function(){
         clearInterval($timer);
        },function(){
           $timer=setInterval(zi,4000); 
       });
        //轮播函数     	
        function tab() {
             $('.bannerbtn li').eq($num).addClass('active').siblings('.bannerbtn li').removeClass('active');
             $('.bannerimg li').eq($num).css('opacity','1').siblings('.bannerimg li').css('opacity','0');
        }
    });
    
//ajex获取的图片轮播
    $(function() {
        var $num = 0;
        var $time=null;
        $('.adverbtn li').mouseover(function() {
                $num = $(this).index();
                ta();
        });
        //自动轮播    
         $time=setInterval(z,4000); 
	         function z(){
						  $num++;
						if($num==6){
							$num=0;
							ta();
						}
							ta();
             }
        //鼠标进入图片轮播停止，鼠标移出图片轮播开始  	         
       $('.adverimg').hover(function(){
         clearInterval($time);
        },function(){
           $time=setInterval(z,4000); 
       }); 
        //轮播函数     	
        function ta() {
            $('.adverbtn li').eq($num).addClass('active').siblings('.adverbtn li').removeClass('active');
             $('.adverimg li').eq($num).css('opacity','1').siblings('.adverimg li').css('opacity','0');
        }
    });
 
//ajex获取图片
$.ajax({
        	type:"get",
        	url:"../php/index.php",
        	async:"true",
        	dataType:"JSON",
        	success:function(arr){
        		var html='';
        		var html1='';
        		var html2='';
        		var html3='';
        		var html4='';
        		var html5='';
        		var html6='';
        		var html7='';
        		var html8='';
        		var html9='';
        		var html10='';
        	    var html11='';
        	    var html12='';
        	    var html13='';
        	    var html14='';
        	    var html15='';
        	    var html16='';
        	    var html17='';
        	    var html18='';
        	    var html19='';
        	    var html20='';
        	    var html21='';
        	    var html22='';
        	    var html23='';
        	    var html24='';
        	    var html25='';
        	    var html26='';
        	    var html27='';
        	    var html28='';
        	    var html29='';
        	    var html30='';
        	    var html31='';
        	    var html32='';
        	    var html33='';
        	    var html34='';
        	    $(arr.data1).each(function (i) {//单品图片
					html+= `<li sid=${arr.data1[i].sid}>
							<a href="#"><img src=${arr.data1[i].url} alt="" /></a>
							</li>`;
					});
        	        $('#dannav').html(html);
        	    
				$(arr.data2).each(function (i) {//热销单品大图片
					html1+= `<li sid=${arr.data2[i].hotsid}>
							<a href="#"><img src=${arr.data2[i].hoturl} alt="" /></a>
							</li>`;
					});
				    $('#hot-img ul').html(html1);
				
				$(arr.data3).each(function (i) {//热销单品小图片
					html2+= `<li sid=${arr.data3[i].sid} class="hot-nav-li">
							<a href="#">
							<img src=${arr.data3[i].url} alt="" />
							<div>${arr.data3[i].name}</div>
							<p>${arr.data3[i].jiexi}</p>
							<span>¥${arr.data3[i].pic}</span>
							</a>
							</li>`;
				    });
				    $('#hot-nav').html(html2);
				
				$(arr.data4).each(function (i) {//精品栏目的图片
					html3+=`<li sid=${arr.data4[i].sid} class="boutique-li">
							<a href="#">
							<img src=${arr.data4[i].url} alt=""  class="boutique-imga"/>
							<img src=${arr.data4[i].minurl} alt="" class="boutique-imgb"/>
							<div class="boutique-div">${arr.data4[i].name}</div>
							<p class="boutique-p">${arr.data4[i].main}</p>
							<span class="boutique-span">¥${arr.data4[i].pic}</span>
							</a>
							</li>`; 
					});
				    $('#boutique ul').html(html3);
				
				$(arr.data5).each(function (i) {
					html4+=`<li sid=${arr.data5[i].sid} >
							<a href="#">
							<img src=${arr.data5[i].url} alt="" />
							</a>
							</li>`;
				    });
			        $('#adver ul').html(html4);
				
        	    $(arr.data6).each(function (i) {
					html5+=`<li sid=${arr.data6[i].sid} >
							<a href="#">
							<img src=${arr.data6[i].url} alt="" />
							</a>
							</li>`;
					});
					$('#phone-nav em').html(html5);
					
				$(arr.data7).each(function (i) {
					html6+=`<li sid=${arr.data7[i].sid} >
							<a href="#">
							<img src=${arr.data7[i].url} alt="" />
							<div>${arr.data7[i].name}</div>
							<p>${arr.data7[i].main}</p>
							<span>¥${arr.data7[i].pic}</span>
							</a>
							</li>`;
					});
					$('#phone-nav ul').html(html6);
					
				$(arr.data10).each(function (i) {
					html7+=`<li sid=${arr.data10[i].sid} >
							<a href="#">
							<img src=${arr.data10[i].url} alt="" />
							</a>
							</li>`;
					});
					$('#computer-nav em').html(html7);
				
				$(arr.data9).each(function (i) {
					html8+=`<li sid=${arr.data9[i].sid} >
							<a href="#">
							<img src=${arr.data9[i].url} alt="" / class="daimg">
							<img src=${arr.data9[i].urlmin} alt=""  class="xiaoimg"/>
							<div>${arr.data9[i].name}</div>
							<p>${arr.data9[i].main}</p>
							<span>¥${arr.data9[i].pic}</span>
							</a>
							</li>`;
					});
					$('#computer-nav ul').html(html8);
					
				$(arr.data11).each(function (i) {
					html9+=`<li sid=${arr.data11[i].sid} >
							<a href="#">
							<img src=${arr.data11[i].url} alt="" />
							</a>
							</li>`;
					});
					$('#ipad-nav em').html(html9);
				
				$(arr.data12).each(function (i) {
					html10+=`<li sid=${arr.data12[i].sid} >
							<a href="#">
							<img src=${arr.data12[i].url} alt="" /">
							<img src=${arr.data12[i].minurl} alt=""  class="xiaoimg"/>
							<div>${arr.data12[i].name}</div>
							<p>${arr.data12[i].main}</p>
							<span>¥${arr.data12[i].pic}</span>
							</a>
							</li>`;
					});
					$('#ipad-nav ul').html(html10);	
				
				$(arr.data13).each(function (i) {
					html11+=`<li sid=${arr.data13[i].sid} >
							<a href="#">
							<img src=${arr.data13[i].url} alt="" />
							</a>
						    </li>`;
					});
					$('#ai-nav em').html(html11);
					
				$(arr.data14).each(function (i) {
					html12+=`<li sid=${arr.data14[i].sid} >
							<a href="#">
							<img src=${arr.data14[i].url} alt="" /">
							<img src=${arr.data14[i].minurl} alt=""  class="xiaoimg"/>
							<div>${arr.data12[i].name}</div>
							<p>${arr.data12[i].main}</p>
							<span>¥${arr.data14[i].pic}</span>
							</a>
							</li>`;
					});
					$('#ai-nav ul').html(html12);	
					
				$(arr.data15).each(function (i) {
					html13+=`<li sid=${arr.data15[i].sid} >
							<a href="#">
							<img src=${arr.data15[i].url} alt="" />
							</a>
							</li>`;
					});
					$('#app-nav em').html(html13);
					
				$(arr.data16).each(function (i) {
					html14+=`<li sid=${arr.data16[i].sid} >
							<a href="#">
							<img src=${arr.data16[i].url} alt="" /">
							<img src=${arr.data16[i].minurl} alt=""  class="xiaoimg"/>
							<div>${arr.data16[i].name}</div>
							<p>${arr.data16[i].main}</p>
							<span>¥${arr.data16[i].pic}</span>
							</a>
							</li>`;
					});
					$('#app-nav ul').html(html14);	
					
				$(arr.data17).each(function (i) {//精品栏目的图片
					html15+=`<li sid=${arr.data17[i].sid} class="boutique-li">
							<a href="#">
							<img src=${arr.data17[i].url} alt=""  class="boutique-imga"/>
							<img src=${arr.data17[i].minurl} alt="" class="boutique-imgb"/>
							<div class="boutique-div">${arr.data17[i].name}</div>
							<p class="boutique-p">${arr.data17[i].main}</p>
							<span class="boutique-span">¥${arr.data17[i].pic}</span>
							</a>
							</li>`; 
					});
				    $('#boutique2 ul').html(html15);
				    
				    	
				$(arr.data19).each(function (i) {
					html16+=`<li sid=${arr.data19[i].sid} >
							<a href="#">
							<img src=${arr.data19[i].url} alt="" />
							</a>
							</li>`;
					});
					$('#parts-nav em').html(html16);
					
				$(arr.data20).each(function (i) {
					html17+=`<li sid=${arr.data20[i].sid} >
							<a href="#">
							<img src=${arr.data20[i].url} alt="" /">
							<img src=${arr.data20[i].minurl} alt=""  class="xiaoimg"/>
							<div>${arr.data20[i].name}</div>
							<p>${arr.data20[i].main}</p>
							<span>¥${arr.data20[i].pic}</span>
							</a>
							</li>`;
					});
					$('#parts-nav ul').html(html17);
					
			    $(arr.data21).each(function (i) {
					html18+=`<li sid=${arr.data21[i].sid} >
							<a href="#">
							<img src=${arr.data21[i].url} alt="" />
							</a>
							</li>`;
					});
					$('#brand-nav em').html(html18);
					
				$(arr.data22).each(function (i) {
					html19+=`<li sid=${arr.data22[i].sid} >
							<a href="#">
							<img src=${arr.data22[i].url} alt="" /">
							<img src=${arr.data22[i].minurl} alt=""  class="xiaoimg"/>
							<div>${arr.data22[i].name}</div>
							<p>${arr.data22[i].main}</p>
							<span>¥${arr.data22[i].pic}</span>
							</a>
							</li>`;
					});
					$('#brand-nav ul').html(html19);
					
				$(arr.data23).each(function (i) {//精品栏目的图片
					html20+=`<li sid=${arr.data23[i].sid} class="boutique-li">
							<a href="#">
							<img src=${arr.data23[i].url} alt=""  class="boutique-imga"/>
							<img src=${arr.data23[i].minurl} alt="" class="boutique-imgb"/>
							<div class="boutique-div">${arr.data23[i].name}</div>
							<p class="boutique-p">${arr.data23[i].main}</p>
							<span class="boutique-span">¥${arr.data23[i].pic}</span>
							</a>
							</li>`; 
					});
				    $('#boutique3 ul').html(html20);
				    
				$(arr.data24).each(function (i) {//精品栏目的图片
					html21+=`<li sid=${arr.data24[i].sid} class="boutique-li">
							<a href="#">
							<img src=${arr.data24[i].url} alt=""  class="boutique-imga"/>
							<img src=${arr.data24[i].minurl} alt="" class="boutique-imgb"/>
							<div class="boutique-div">${arr.data24[i].name}</div>
							<p class="boutique-p">${arr.data24[i].main}</p>
							<span class="boutique-span">¥${arr.data24[i].pic}</span>
							</a>
							</li>`; 
					});
				    $('#boutique4 ul').html(html21);
				    
				$(arr.data25).each(function (i) {
					html22+=`<li sid=${arr.data25[i].sid} >
							<a href="#">
							<img src=${arr.data25[i].url} alt="" />
							</a>
							</li>`;
					});
					$('#footer').html(html22);
					
				$(arr.data26).each(function (i) {
					html23+=`<li sid=${arr.data26[i].sid} class="bb">
							<a href=${arr.data26[i].url}>
							${arr.data26[i].main}
							</a>
							</li>`;
					});
					$('#li_nav #linav').html(html23);
					
				$(arr.data27).each(function (i) {
					html24+=`<li sid=${arr.data27[i].sid}>
							<a href=${arr.data27[i].url}>
							<img src=${arr.data27[i].url} alt="" />
							<p>${arr.data27[i].name}</p>
							<span>¥${arr.data27[i].pic}</span>
							</a>
							</li>`;
					});
					$('#li_nav #linavimg').html(html24);
					
				$(arr.data29).each(function (i) {
					html25+=`<li sid=${arr.data29[i].sid} class="bb">
							<a href=${arr.data29[i].url}>
							${arr.data29[i].main}
							</a>
							</li>`;
					});
					$('#li_nav2 #linav2').html(html25);
					
				$(arr.data30).each(function (i) {
					html26+=`<li sid=${arr.data30[i].sid}>
							<a href=${arr.data30[i].url}>
							<img src=${arr.data30[i].url} alt="" />
							<p>${arr.data30[i].name}</p>
							<span>¥${arr.data30[i].pic}</span>
							</a>
							</li>`;
					});
					$('#li_nav2 #linavimg2').html(html26);
					
				$(arr.data31).each(function (i) {
					html27+=`<li sid=${arr.data31[i].sid} class="bb">
							<a href=${arr.data31[i].url}>
							${arr.data31[i].main}
							</a>
							</li>`;
					});
					$('#li_nav3 #linav3').html(html27);
					
				$(arr.data32).each(function (i) {
					html28+=`<li sid=${arr.data32[i].sid}>
							<a href=${arr.data32[i].url}>
							<img src=${arr.data32[i].url} alt="" />
							<p>${arr.data32[i].name}</p>
							<span>¥${arr.data32[i].pic}</span>
							</a>
							</li>`;
					});
					$('#li_nav3 #linavimg3').html(html28);
				
				$(arr.data33).each(function (i) {
					html29+=`<li sid=${arr.data33[i].sid} class="bb">
							<a href=${arr.data33[i].url}>
							${arr.data33[i].main}
							</a>
							</li>`;
					});
					$('#li_nav4 #linav4').html(html29);
					
				$(arr.data34).each(function (i) {
					html30+=`<li sid=${arr.data34[i].sid}>
							<a href=${arr.data34[i].url}>
							<img src=${arr.data34[i].url} alt="" />
							<p>${arr.data34[i].name}</p>
							<span>¥${arr.data34[i].pic}</span>
							</a>
							</li>`;
					});
					$('#li_nav4 #linavimg4').html(html30);
					
				$(arr.data35).each(function (i) {
					html31+=`<li sid=${arr.data35[i].sid} class="bb">
							<a href=${arr.data35[i].url}>
							${arr.data35[i].main}
							</a>
							</li>`;
					});
					$('#li_nav5 #linav5').html(html31);
					
				$(arr.data36).each(function (i) {
					html32+=`<li sid=${arr.data36[i].sid}>
							<a href=${arr.data36[i].url}>
							<img src=${arr.data36[i].url} alt="" />
							<p>${arr.data36[i].name}</p>
							<span>¥${arr.data36[i].pic}</span>
							</a>
							</li>`;
					});
					$('#li_nav5 #linavimg5').html(html32);
					
					$(arr.data37).each(function (i) {
					html33+=`<li sid=${arr.data37[i].sid} class="bb">
							<a href=${arr.data37[i].url}>
							${arr.data37[i].main}
							</a>
							</li>`;
					});
					$('#li_nav6 #linav6').html(html33);
					
				$(arr.data39).each(function (i) {
					html34+=`<li sid=${arr.data39[i].sid}>
							<a href=${arr.data39[i].url}>
							<img src=${arr.data39[i].url} alt="" />
							<p>${arr.data39[i].name}</p>
							<span>¥${arr.data39[i].pic}</span>
							</a>
							</li>`;
					});
					$('#li_nav6 #linavimg6').html(html34);
        	}
    
    });

//楼梯
	$(function(){
    		var $louti=$('#loutinav');
    		var $loutili=$('#loutinav ul li');
    		var $louceng=$('#main .louti');
    		$(window).on('scroll',function(){
    			var $st=$(window).scrollTop();
    			if($st>=800){
    				$louti.show();
    			}else{
    				$louti.hide();
    			}
    			$louceng.each(function(index,element){
    				var $top1=$louceng.eq(index).offset().top+400;
    				if($top1>$st){
    					$loutili.removeClass('active');
    					$loutili.eq(index).addClass('active');
    					return false;
    				}
    			});
    		});
    		$loutili.not('.last').on('click',function(){
    			var $top=$louceng.eq($(this).index()).offset().top;
    			$('html,body').animate({
    				scrollTop:$top
    			})
    		});
    		$('#loutinav ul li.last').on('click',function(){
    			$('html,body').animate({
    				scrollTop:0
    			});
    		});
    		$('#loutinav ul li.first').on('click',function(){
    			$('html,body').animate({
    				scrollTop:200000
    			});
    		});
    	});
    	
//给图片添加效果滑动边框效果
$(function(){
	$('#hot-nav').hover(function () {
		$('#hot-nav').find('li').each(function (i) {
			$('#hot-nav').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#hot-nav').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});
	
	$('#phone-nav').hover(function () {
		$('#phone-nav ul').find('li').each(function (i) {
			$('#phone-nav ul').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#phone-nav ul').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});

    $('#computer-nav').hover(function () {
		$('#computer-nav ul').find('li').each(function (i) {
			$('#computer-nav ul').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#computer-nav ul').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});

    $('#ipad-nav').hover(function () {
		$('#ipad-nav ul').find('li').each(function (i) {
			$('#ipad-nav ul').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#ipad-nav ul').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});
    
    $('#ai-nav').hover(function () {
		$('#ai-nav ul').find('li').each(function (i) {
			$('#ai-nav ul').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#ai-nav ul').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});
    
    $('#app-nav').hover(function () {
		$('#app-nav ul').find('li').each(function (i) {
			$('#app-nav ul').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#app-nav ul').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});
    
     $('#parts-nav').hover(function () {
		$('#parts-nav ul').find('li').each(function (i) {
			$('#parts-nav ul').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#parts-nav ul').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});
     
     $('#brand-nav').hover(function () {
		$('#brand-nav ul').find('li').each(function (i) {
			$('#brand-nav ul').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#brand-nav ul').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});
     
    $('#dannav').hover(function () {
		$('#dannav').find('li').each(function (i) {
			$('#dannav').find('li').eq(i).hover(function () {
				$(this).css('border-width','1px').css('border-style','solid').css('border-color','#FF0000').css('box-sizing','border-box').siblings().css('border','0');
			})
		})
	},function () {
		$('#dannav').find('li').each(function (i) {
			$(this).css('border','0')
		})
	});
     
})


  