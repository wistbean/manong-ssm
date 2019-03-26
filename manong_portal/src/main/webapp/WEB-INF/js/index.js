//banner
{
    const imgs = document.querySelectorAll(".banner_img li");   //不会被修改，常量
    let pagers = document.querySelectorAll(".banner_lunbo li");
    let banner = document.querySelector(".banner_bottom");   //设置banner，鼠标放上去，停止播放，鼠标移开开始播放。

    pagers.forEach(function (ele, index) {    //形参，遍历数。
        ele.onmouseenter = function () {
            for (let i = 0; i < imgs.length; i++) {
                imgs[i].classList.remove("active");
                pagers[i].classList.remove("active");   //移除active
            }
            this.classList.add("active");
            imgs[index].classList.add("active");    //添加active
            n = index;     //n从当前位子自加。
        }
    })

    // BOM_window.setInterval();//让代码自动执行   自动轮播
    let n = 0;     //访问n，自加
    let t = setInterval(move, 3000)

    function move() {
        n++;
        //n超范围判断
        // n=n%5;
        if (n === imgs.length) {
            n = 0;    //赋值
        }
        //左按钮，点到第一张时跳转到第五章
        if (n < 0) {
            n = imgs.length - 1;
        }
        for (let i = 0; i < imgs.length; i++) {
            imgs[i].classList.remove("active");
            pagers[i].classList.remove("active");
        }
        imgs[n].classList.add("active");
        pagers[n].classList.add("active");
    }

    banner.onmouseenter=function(){
        clearInterval(t);
    }
    banner.onmouseleave=function(){
        t=setInterval(move,3000);
    }
}
//banner 侧导航点击出现内容
{
    let lab=document.querySelectorAll(".banner_ce li");
    let menus=document.querySelectorAll(".piaofu");
    let obj=menus[0];
    lab.forEach(function(ele,index){
        ele.onmouseenter=function(){
            menus[index].style.display="block";
        }
        ele.onmouseleave=function(){
            menus[index].style.display="none";
        }
    })
}
//某一位置出现导航栏（上导航、左导航）,以及点击回到顶部
{
    let topBar=document.querySelector(".topBar");
    let leftBar=document.querySelector(".leftBar");
    window.onscroll=function(){
        let st=document.documentElement.scrollTop;
        if(st>700){
            topBar.style.display="block";
        }else{
            topBar.style.display="none";
        }

        if(st>1000&&st<12400){
            leftBar.style.display="block";
        }else{
            leftBar.style.display="none";
        }
    }

    let leftBar_footer=document.querySelector(".leftBar_footer");
    leftBar_footer.onclick=function(){
        let st=document.documentElement.scrollTop;
        let t=setInterval(function(){
            st-=200;
            if(st<0){
                st=0;
                clearInterval(t);
            }
            document.documentElement.scrollTop=st;
        },25)
    }
}
//跳楼机
{
    let container=document.querySelectorAll(".content_container");
    let tips=document.querySelectorAll(".tips");
    let flag=true;
    tips.forEach(function(ele,index){
        ele.onclick=function(){
            flag=false;
            let ot=container[index].offsetTop-20;
            // document.documentElement.scrollTop=ot;
            let now=document.documentElement.scrollTop;
            let speed=(ot-now)/8;
            let time=0;
            let t=setInterval(function(){
                time+=25;
                now+=speed;
                if(time===200){
                    clearInterval(t);
                    flag=true;
                }
                document.documentElement.scrollTop=now;
            },25)
        }
    });
    //给同一内容添加很多不同事件处理事件
    window.addEventListener("scroll",function(){
        if(flag){
            let st=document.documentElement.scrollTop;
            // let obj=tips[0];
            for(let i=0;i<container.length;i++){
                if(st>container[i].offsetTop-80){
                    for(let i=0;i<tips.length;i++){
                        tips[i].classList.remove("active");
                    }
                    tips[i].classList.add("active");
                }
            }
        }
    })
}
//右侧导航栏返回顶部
{
    let right_top=document.querySelector(".right_top");
    right_top.onclick=function(){
        let st=document.documentElement.scrollTop;
        let t=setInterval(function(){
            st-=200;
            if(st<0){
                st=0;
                clearInterval(t);
            }
            document.documentElement.scrollTop=st;
        },25)
    }
}
//右侧导航弹出文字
{

    let piaofu1=document.querySelectorAll(".piaofu1");
    let rightBan1=document.querySelectorAll(".rightBan_1");
    rightBan1.forEach(function (ele,index) {
        ele.onmouseenter=function () {
            piaofu1[index].style.opacity=1;
            piaofu1[index].style.marginRight=0;
        }
        ele.onmouseleave=function () {
            piaofu1[index].style.opacity=0;
            piaofu1[index].style.marginRight=50+"px";
        }
    })
}
//天猫超市
{
    let containerLeft=document.querySelectorAll(".containerFBRight_1Top_Left");
    let conBottomZong=document.querySelectorAll(".conBottomZong");
    let banner2=document.querySelector(".containerFour_bottomRight_1Z");
    containerLeft.forEach(function (ele,index) {
        ele.onmouseenter=function () {
            for(let i=0;i<containerLeft.length;i++){
                containerLeft[i].classList.remove("active");
                conBottomZong[i].classList.remove("active");
            }
            this.classList.add("active");
            conBottomZong[index].classList.add("active");
        }
    })
    let n=0;
    let t=setInterval(moveTwo,3000)
    function moveTwo(){
        n++;
        if(n===containerLeft.length){
            n=0;
        }
        if(n<0){
            n=containerLeft.length-1;
        }
        for(let i=0;i<containerLeft.length;i++){
            containerLeft[i].classList.remove("active");
            conBottomZong[i].classList.remove("active");
        }
        containerLeft[n].classList.add("active");
        conBottomZong[n].classList.add("active");
    }
    banner2.onmouseenter=function () {
        clearInterval(t);
    }
    banner2.onmouseleave=function () {
        t=setInterval(moveTwo,3000)
    }
}