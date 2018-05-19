function getstyle(obj,attr){
				if(window.getComputedStyle){
					return getComputedStyle(obj)[attr];
				}else{
					return obj.currentStyle[attr];
				}
			}
function bufferMove(obj,json,fn){
				clearInterval(obj.timer);
				obj.timer=setInterval(function(){
					var bstop=true;//所有的元素都完成
					for(var attr in json){//json[attr]===>target
						var curr=0;
						if(attr=='opacity'){
							curr=Math.round(getstyle(obj,attr)*100);
						}else{
							curr=parseInt(getstyle(obj,attr));
						}
						var speed=(json[attr]-curr)/5;
						speed=speed>0?Math.ceil(speed):Math.floor(speed);
						if(curr!=json[attr]){//条件满足：当前值不等于目标，继续运动
							//继续运动
							if(attr=='opacity'){
								obj.style.opacity=(curr+speed)/100;
								obj.style.filter='alpha(opacity='+(curr+speed)+')';
							}else{
								obj.style[attr]=curr+speed+'px';
							}
							bstop=false;//还有元素没有完成运动
						}
					}
					
					if(bstop){
						clearInterval(obj.timer);
						fn&&fn();
					}
					
					
				},10)
			}
			