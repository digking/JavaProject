 /* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function makeRequestObject()
    {
        var xmlHttp=false;
        
        try
            {
                xmlHttp=new ActiveXObject('Msxml2.XMLHTTP');
                
            }
            catch(e)
                {
                    try
                     {
                         xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');
                         
                     }
                     catch(E)
                        {
                            xmlHttp=false;
                            
                        }
                    
                }
                
                if(!xmlHttp && typeof(XMLHttpRequest)!='undefined')
                    {
                            xmlHttp=new XMLHttpRequest();
                    
                    }
                    return xmlHttp;
        
    }
    
    function addTocart(val)
        {
            var xmlHttp=makeRequestObject();
            var file='AddToCart.jsp?pid='+val;
  
            xmlHttp.open('GET',file,true);
                      alert("Item Added To Cart!");
            xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            
                                                            
                                                            
                                                        }
                                                    
                                                }
            
            xmlHttp.send(null);
            
        }
    

function retriveQuestById()
        {
           var xmlHttp=makeRequestObject();
           
           var file='showQuestionById.jsp?qid='+document.getElementById("txt1").value;
           
           xmlHttp.open('GET',file,true);
            
            xmlHttp.onreadystatechange=function()
                                            {
                                                
                                                if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                    {
                                                        
                                                        var content=xmlHttp.responseText;
                                                        
                                                        if(content)
                                                            {
                                                                
                                                                document.getElementById("info").innerHTML=content;
                                                                
                                                            }
                                                        
                                                    }
                                                
                                                
                                                
                                                
                                            }
                                            
                                            
            xmlHttp.send(null);
        }
        
        
        function sendTidToCart(val)
            {
                var xmlHttp=makeRequestObject();
                
                var file='tcart.jsp?value='+val;
               
                xmlHttp.open('GET',file,true);
                
                xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                          
                                                            
                                                        }
                                                    
                                                    
                                                }
                
                
                xmlHttp.send(null);
                
            }
            
            function sendEidToCart(val)
            {
                var xmlHttp=makeRequestObject();
                
                var file='ecart.jsp?value='+val;
               
                xmlHttp.open('GET',file,true);
                
                xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                          
                                                            
                                                        }
                                                    
                                                    
                                                }
                
                
                xmlHttp.send(null);
                
            }
            
            
              
            function sendSidToCart(val)
            {
                var xmlHttp=makeRequestObject();
                
                var file='stdcart.jsp?value='+val;
                alert(file);
               
                xmlHttp.open('GET',file,true);
                
                xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                          
                                                            
                                                        }
                                                    
                                                    
                                                }
                
                
                xmlHttp.send(null);
                
            }
            
              function sendHidToCart(val)
            {
                var xmlHttp=makeRequestObject();
                
                var file='hospitalcart.jsp?value='+val;
                alert(file);
               
                xmlHttp.open('GET',file,true);
                
                xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                          
                                                            
                                                        }
                                                    
                                                    
                                                }
                
                
                xmlHttp.send(null);
                
            }
            
               function sendOidToCart(val)
            {
                var xmlHttp=makeRequestObject();
                
                var file='officeCart.jsp?value='+val;
                alert(file);
               
                xmlHttp.open('GET',file,true);
                
                xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                          
                                                            
                                                        }
                                                    
                                                    
                                                }
                
                
                xmlHttp.send(null);
                
            }
            
            
              function sendGidToCart(val)
            {
                var xmlHttp=makeRequestObject();
                
                var file='genCart.jsp?value='+val;
                alert(file);
               
                xmlHttp.open('GET',file,true);
                
                xmlHttp.onreadystatechange=function()
                                                {
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                          
                                                            
                                                        }
                                                    
                                                    
                                                }
                
                
                xmlHttp.send(null);
                
            }
            
  function validateMobileno()
    {
      
      var _txtid=document.getElementById("txt_mobile");
      
      if(_txtid.value=="")
        {
            
            alert("The Mobile number is must!");
        }
        else if(isNaN(_txtid.value))
            {
                
                alert("Value contains invalid characters");
                _txtid.value="";
                
                _txtid.focus();
                
            }
         else if(!(_txtid.value.length==10))   
            {
                
                alert("invalid mobile number entered");
                _txtid.value="";
                _txtid.focus();
            }
            
      
      
        
        
    }
    
    
 function validateEmailId()
    {
        var _email=document.getElementById("txt_email").value;
        var _reg_exp= /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;;
        
        if(_email==="")
            {
                alert("email must be entered!");
                document.getElementById("txt_email").focus();
                
                return false;
               
                
            }
            else if(_reg_exp.test(_email)===false)
                {
                    alert(_email);
                    alert(_reg_exp.test(_email));
                    
                    alert("Email Address is in invalid format");
                    document.getElementById("txt_email").value="";
                    document.getElementById("txt_email").focus();
                    
                    return false;
                  
                }
                else
                    
                    {
                        
                        
                    }
                
                
                
                
        
        
        
        
        
    }
    
    
   function checkExistingId()
    {
       var xmlHttp=makeRequestObject();
       var file='checkExistingId.jsp?txt_email='+document.getElementById("txt_email").value;
       
       xmlHttp.open('GET',file,true);
       
       xmlHttp.onreadystatechange=function()
                                                {
                                                    
                                                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            
                                                            if(content)
                                                                {
                                                                    document.getElementById("info").innerHTML=content;
                                                                    
                                                                }
                                                                else
                                                                    {
                                                                        document.getElementById("info").innerHTML="";
                                                                        
                                                                        
                                                                    }
                                                            
                                                        }
                                                    
                                                }
       xmlHttp.send(null);
        
    }
    
    
    function validatePassword()
        {
            
            
                if(document.getElementById("pass").value!=document.getElementById("repass").value)
                    {
                        alert("Password doesnt match!");
                        
                    }
                else if(document.getElementById("pass").value.length<3)    
                    {
                        alert("Password Length is Invalid!");
                        
                    }
                    
            
            
            
        }