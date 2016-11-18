// JavaScript Document
$(function (){
var ok1=false;
var ok2=false;
var  ok3=false;
var ok4=false;
var ok5=false;
var ok6=false;
$('input[name="username"]').focus(function(){
		if($(this).val().length<2&&$(this).val()==' '){		
			 ok1=false;
		$(this).next().text('notnull,min 2').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=2&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok1=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('notnull,min2').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('notnull,min2').removeClass('state1').addClass('state2');
				}
			ok1=false;
			}								 
										 });
$('input[name="password"]').focus(function(){
	    if($(this).val().length<6&&$(this).val()==' '){	
		 ok2=false;
		$(this).next().text('notnull,min6').removeClass('state1').addClass('state2');								  
		}
							}).blur(function(){
		if($(this).val().length>=6&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok2=true;
			}	
		else{
			if($('span').hasClass('state3')){
		        	$(this).next().text('notnull,min6').removeClass('state3').addClass('state2');
				}
			else{
			        $(this).next().text('notnull,min6').removeClass('state1').addClass('state2');
			}
			ok2=false;
			}								 
										 });
$('input[name="number"]').focus(function(){
		if($(this).val().length<6&&$(this).val()==' '){		
			 $ok3=false;
		$(this).next().text('notnull,min6').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=6&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok3=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('notnull,min6').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('notnull,min6').removeClass('state1').addClass('state2');
				}
			ok3=false;
			}								 
				});
$('input[name="classes"]').focus(function(){
		if($(this).val().length<6&&$(this).val()==' '){		
			 ok4=false;
		$(this).next().text('notnull,min6').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=6&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok4=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('notnull,min6').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('notnull,min6').removeClass('state1').addClass('state2');
				}
			ok4=false;
			}								 
				});
$('input[name="age"]').focus(function(){
		if($(this).val().length<2&&$(this).val()==' '){		
			 ok5=false;
		$(this).next().text('notnull,min2').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=2&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok5=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('notnull,min2').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('notnull,min2').removeClass('state1').addClass('state2');
				}
			ok5=false;
			}								 
				});
$('input[name="course"]').focus(function(){
	if($(this).val().length<2&&$(this).val()==' '){		
		 ok6=false;
	$(this).next().text('notnull,min2').removeClass('state1').addClass('state2');}								  
									 }).blur(function(){
	if($(this).val().length>=2&&$(this).val()!=' '){
		$(this).next().text('success').removeClass('state1').addClass('state3');
                    ok6=true;
		}	
	else{
		if($('span').hasClass('state3')){
		        $(this).next().text('notnull,min2').removeClass('state3').addClass('state2');
			}
		else{
		       $(this).next().text('notnull,min2').removeClass('state1').addClass('state2');
			}
		ok6=false;
		}								 
			});




$('form').submit(function (){	  
   if(ok1&&ok2&&ok3&&ok4&&ok5&&ok6){
	   return true;
	   }	
	 else{ 
		alert('please write right');
	   return false; 
		 }  
			});


});