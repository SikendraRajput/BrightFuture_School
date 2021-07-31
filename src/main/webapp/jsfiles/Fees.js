/**
 * 
 */
function feesValidation(){
	let ro_no=document.form.ro_no.value;
	if(ro_no==="" || ro_no===null){
		alert("can't be empty string..");
		return false;
	}
	let pay=document.form.payment.value;
	if(isNaN(pay) || pay==="" || pay===null){
		alert("payment is not valid..");
		return false;
	}
}