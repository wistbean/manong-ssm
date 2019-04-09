    var wrap=document.getElementById('banner_bar');
    var pic=document.getElementById('imgBox').getElementsByTagName('li');
    var list=document.getElementById('imgNum').getElementsByTagName('a');
    var  index=0;
    var timer=null;
	//鼠标切换
	wrap.onmouseover=function(){  
	    clearInterval(timer);// 鼠标划过整个容器时停止自动播放
    }	
	wrap.onmouseout=function(){  
	    timer=setInterval(autoplay,2000);
    }
	for(var i=0;i<list.length;i++){
		list[i].id=i;
		list[i].onmouseover=function(){
		clearInterval(timer);	
		change(this.id);
		}
	}
   // 自动播放
   if(timer){
	    clearInterval(timer);
		timer=null;
	} 
	timer=setInterval(autoplay,2000);
//*********************************************************主程序结束
//****************定时函数
    function change(a){
	       for(var j=0;j<list.length;j++){
			   list[j].className="";
			   pic[j].style.display="none";
	       }
	       pic[a].style.display="block";
	       list[a].className="active";
           index=a; 
  } 
//******************自动播放
   function autoplay(){
           index++;
		   if(index>list.length-1){
				   index=index-list.length;
		   }
           change(index);
   }
//*********************************************************副程序结束