/**
 * 
 */
function validation(){
	
	let name=document.form.sname.value;
	if (name=="" || name==null){
	alert("can't be blanck.");
	return false;
	}
	let fname=document.form.fname.value;
	if (fname=="" || fname==null){
	alert("can't be blanck.");
	return false;
	}
	let mname=document.form.mname.value;
	if (mname=="" || mname==null){
	alert("can't be blanck.");
	return false;
	}
	let village=document.form.village.value;
	if (village=="" || village==null){
	alert("can't be blanck.");
	return false;
	}
	let dist=document.form.dist.value;
	if (dist=="" || dist==null){
	alert("can't be blanck.");
	return false;
	}
	let mobile=document.form.mobile.value;
	if (isNaN(mobile) && mobile.length!=10){
	alert(" please valid number.");
	return false;
	}
	let roll=document.form.ro_no.value;
	if (roll=="" || roll==null){
	alert("can't be blanck.");
	return false;
	}
	let stu_class=document.form.student_class.value;
	if (isNaN(stu_class)|| stu_class=="" || stu_class==null ){
		alert("class is empty or not valid");
		return false;
	}
	
}