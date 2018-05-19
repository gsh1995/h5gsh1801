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
	
//放大镜功能
   $(function(){ 
   	 $('#xiaobox li').hover(function(){
   	 $('.zhong img').eq($(this).index()).css('display','block').siblings().css('display','none');
     })
   	  
     $('.zhong').hover(function(){ 
     	
     	var $a=$('.da').width()*$('.zhong').width()/$('.da img').width()+'px';
   	  	var $b=$('.da').height()*$('.zhong').height()/$('.da img').height()+'px';
   	  	 $('#fd').css('display','block').css('width',$a).css('height',$b);
   	  	 $('.da').css('display','block');
   	  	 var $zsrc=$(this).find('img:visible').attr('src');
   	  	 $('.da img').attr('src',$zsrc);
   	  	 var $scale = $('.da').width()/ $('#fd').width();
   	  	 $('#fd').mousemove(function(event){
            var $x = event.clientX - $('.zhong').offset().left- $('#fd').width() / 2;
            var $y = event.clientY - $('.zhong').offset().top - $('#fd').height()/ 2;
            if ($x < 0) {
                $x = 0;
            } else if ($x >=$('.zhong').width() - $('#fd').width()- 2) {
                $x = $('.zhong').width() - $('#fd').width() - 2;
            }
            if ($y < 0) {
                $y = 0;
            } else if ($y >= $('.zhong').height()-$('#fd').height()-2) {
                $y =  $('.zhong').height()-$('#fd').height()-2;
            }
            var $c=$x+'px';
            var $d=$y+'px';
            var $e=-$x*$scale+'px';
            var $f=-$y*$scale+'px';
             $('#fd').css('left',$c)  ;
             $('#fd').css('top',$d);
             $('.da img').css('left',$e);
             $('.da img').css('top',$f);
 	  	 })
         },function(){
   	  	  $('#fd').css('display','none')
   	  	  $('.da').css('display','none');
})    
   })
   
//点击当前小边框会变红
   $(function(){
   	   $('.someimg a').click(function(){
   	   	  $(this).css('border-color','#CA141D').parent('.someimg span').siblings('.someimg span').find('a').css('border-color','#CCCCCC');
   	   })
   	   
   	   $('.someban a').click(function(){
   	   	   $(this).css('border-color','#CA141D').siblings('a').css('border-color','#CCCCCC');
   	   })
   	   	   
   	   $('.somecan a').click(function(){
   	   	   $(this).css('border-color','#CA141D').siblings('a').css('border-color','#CCCCCC')
   	   })
   	   
   	   $('.somebao a').click(function(){
   	         if($(this).css('border-color')=='rgb(204, 204, 204)'){
   	         	$(this).css('border-color','#CA141D')
   	         }else if($(this).css('border-color')=='rgb(202, 20, 29)'){
   	         	$(this).css('border-color','#CCCCCC')
   	         }
   	   })
   })

//加减事件
  $(function(){
  	$('.bbb').on('click', function() {
  		$(this).css('color','#333333').siblings('span').css('color','#cccccc')
        var $count = $('.btnleft').find('input').val();
        $count++;
    $('.btnleft').find('input').val($count);
   });
   
  	$('.ccc').on('click', function() {
  	$(this).css('color','#333333').siblings('span').css('color','#cccccc')
    var $count = $('.btnleft').find('input').val();
    $count--;
    if ($count <= 1){
        $count = 1;
        }
    $('.btnleft').find('input').val($count);
    });
  	
    $('.ccc').hover(function(){
    var $count = $('.btnleft').find('input').val();
    if ($count <= 1){
        $(this).css('cursor','not-allowed')
    }else{
    	$(this).css('cursor','pointer')
    }
    });
  })





//存cookie
// $(function(){
// 	    var sidarr=[];
// 	    var numarr=[];
// 	    function getcookievalue(){
//		if(getCookie('cartsid')){//cartsid：cookie里面id的名称
//		    	sidarr=getCookie('cartsid').split(',');
//		   }
//		if(getCookie('cartnum')){//cartnum：cookie里面数量的名称
//				numarr=getCookie('cartnum').split(',');
//			}
//		}
// 	    
// 	    
// })