/* global t */


function validation()
{
if (document.spRegForm.ownerName.value==""){
alert("Pleace enter your name");
t.style.border="1px solid red";
return false;
}

if (document.spRegForm.companyName.value==""){
alert("Pleace enter your Company name");
t.style.border="1px solid red";
return false;
}

if (document.spRegForm.email.value==""){
alert("Pleace enter your email");
t.style.border="1px solid red";
return false;
}

if (document.spRegForm.address.value==""){
alert("Pleace enter your address");
t.style.border="1px solid red";
return false;
}









}