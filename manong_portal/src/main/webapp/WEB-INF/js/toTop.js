//返回顶部
window.onload=function(){
	var toTop=document.getElementById("toTop");
	//获取页面可视区高度；
	var scrollHeight=document.documentElement.clientHeight;
	var timer=null;
	var isTop=true;
	window.onscroll=function(){
		var osTop=document.documentElement.scrollTop || document.body.scrollTop;
		if(osTop>=scrollHeight){
			toTop.style.display="block";
		}else{
			toTop.style.display="none";
		}
		if(!isTop){
			clearInterval(timer);
		}
		isTop=false;
	}
	toTop.onclick=function(){
	  timer=setInterval(function(){
		var osTop=document.documentElement.scrollTop || document.body.scrollTop;
		var ispeed=Math.floor(-osTop/10);
		document.documentElement.scrollTop=document.body.scrollTop-=osTop+ispeed;
		isTop=true;
		if(osTop==0){clearInterval(timer);}
	  },30);
	}
}