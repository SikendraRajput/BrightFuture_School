/**
 * 
 */
function feesValidation(){
    let pay=document.form.payment.value;
	if(isNaN(pay) || pay==="" || pay===null){
		alert("payment is not valid..");
		return false;
	}
}