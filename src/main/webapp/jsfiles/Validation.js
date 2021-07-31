/**
 * 
 */
function emailValidation() {
     let gmail=document.logform.gmail.value;
     let length=gmail.length;
	let sub=gmail.substring(length-10);
	let mail="@gmail.com";
	let pass=document.logform.password.value;
	
	if(gmail==="" && pass===""){
		alert("gmail & password can't be blank .")
		return false;
	}
	
	if(gmail === "" || gmail === null || length<=10 || (!(sub === mail))){
		alert("Please Enter valid G-mail !!");
		return false;
	}
	
	
	if(pass.length<8 || pass==null || pass==""){
		alert("Please Enter valid Password!! ");
		return false;
		
	}	
}