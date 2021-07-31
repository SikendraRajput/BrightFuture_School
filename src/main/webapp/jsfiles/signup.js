/**
 * 
 */
function validation(){
	let name=document.myform.name.value;
	if (name=="" || name==null){
	alert("Please Enter name");
	return false;
	}
	
	let gmail=document.myform.gmail.value;
	let length=gmail.length;
	let sub=gmail.substring(length-10);
	let mail="@gmail.com";
	if(gmail === "" || gmail === null || length<=10 || (!(sub === mail))){
		alert("Please Enter valid Password !!");
		return false;
	}
	let num=document.myform.mobile.value;
	if(isNaN(num) || num.length!=10){
		alert("Please Enter valid number!");
		return false;
	}
	let pass=document.myform.password.value;
	if(pass.length<8 || pass==null || pass==""){
		alert("Please Enter valid Password!! ");
		return false;
		
	}	
}