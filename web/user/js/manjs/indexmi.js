//整体移动
function changeL(){
	var stargoods = document.getElementById("se");	
	if(stargoods.style.marginLeft=="-1240px"){
		stargoods.style.marginLeft = "0px";	
	
	}else{
		 
	}
}
function changeR(){
	var stargoods = document.getElementById("se");
	if(stargoods.style.marginLeft=="0px"){
		stargoods.style.marginLeft = "-1240px";		
	}else{
		  
	}
}
//箭头跳转右
function jiantouy(){
	var slides=document.getElementsByClassName("slide");
	if(index>=(slides.length-1)){
		index=0;
	}else{
		index = index+1;
	}
	
	var slide_as= document.getElementsByName("slide_a");
	for(var i=0;i<slides.length;i++){
		if(i==index){
			slides[i].style.zIndex = 50;
//			slides[i].style.display = "block";
			slides[i].style.opacity ="1";
			slide_as[i].className="ui-page-line active";
		}else{
			slides[i].style.zIndex = 0;
//			slides[i].style.display = "none";
			slides[i].style.opacity ="0";
			slide_as[i].className="ui-page-line";
		}
	}
}
//箭头跳转左
function jiantouz(){
	var slides=document.getElementsByClassName("slide");
	0,1  <2
	if(index<=0){
		index = 2;
	}else{		
		index=index-1;
	}
	
	var slide_as= document.getElementsByName("slide_a");
	for(var i=0;i<slides.length;i++){
		if(i==index){
			slides[i].style.zIndex = 50;
//			slides[i].style.display = "block";
			slides[i].style.opacity ="1";
			slide_as[i].className="ui-page-line active";
		}else{		
			slides[i].style.zIndex = 0;
//			slides[i].style.display = "none";
			slides[i].style.opacity ="0";
			slide_as[i].className="ui-page-line";
			
		}
	}
}
