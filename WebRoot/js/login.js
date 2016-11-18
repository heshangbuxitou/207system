// JavaScript Document
$(function (){
var ok1=false;
var ok2=false;
var ok3=false;
$('input[name="number"]').focus(function(){
		if($(this).val().length<6&&$(this).val()==' '){		
			 $ok1=false;
		$(this).next().text('not null,min 6').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=6&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok1=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('not null,min 6').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('not null,min 6').removeClass('state1').addClass('state2');
				}
			ok1=false;
			}								 
										 });
$('input[name="password"]').focus(function(){
	    if($(this).val().length<6&&$(this).val()==' '){	
		 ok2=false;
		$(this).next().text('not null,min 6').removeClass('state1').addClass('state2');								  
		}
							}).blur(function(){
		if($(this).val().length>=6&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok2=true;
			}	
		else{
			if($('span').hasClass('state3')){
		        	$(this).next().text('not null,min 6').removeClass('state3').addClass('state2');
				}
			else{
			        $(this).next().text('not null,min 6').removeClass('state1').addClass('state2');
			}
			ok2=false;
			}								 
										 });
//$('.code').focus(function(){
//			if($('.code').val()==$.session.get('code'))	{
//				ok3='true';
//				}		  
//						  }).blur(function (){
//			if($('.code').val()===$.session.get('srand'))	{
//				ok3='true';
//				}			  
//							  
//							  });

$('form').submit(function (){	  
   if(ok1&&ok2){
	   return true;
	   }	
	 else{ 
		 alert('please write right');
	   return false; 
		 }  
			});

		
});