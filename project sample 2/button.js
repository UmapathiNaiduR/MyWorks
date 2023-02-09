// function same_psd(){
//     let x=document.getElementById("password").value;
//     let y=document.getElementById("con-pass").value;
    
// if( x===y){
// alert("Both password are same");
// }else if(x!=y){
// alert("both  passwords are not same");
// }else if(x===" "){
// alert("Fields are empty");
// }
//  }






$("#formvalidate").ready({
    rules:{
        employeeid:{
            minlength:3
        },
        email:{
            email:true
        },
        phone:{
            number:true,
            minlength:10,
            maxlength:10
        },
    },
        messages:{
            employeeid:{
            required:"Please enter name",
            minlength:"Name should have ateast 3 characters"
        },
        email:"please enter ur email id",
        phone:"please enter valid phone number",
        subject:"please enter some subject",
        formmessage:"please enter some message"
    },
        submitHandler: function(form) {
          form.submit();
        }
})

// $(document).ready(function(){
//     rules:{
//              employeeid:{
//                    minlength:3
//              }}
// })