document.addEventListener("turbolinks:load", function() {
    $('.building_type').show().hide();
  
    $('#selectator').change(function() {
      $('.building_type').hide();
      $('#' + $(this).val()).show();
    })
  })
  
  
  
  
  
  
    //Function for Residential Quote    
  
    function residentialcalculator()
    {
        var resapp = $("#res1").val();
        var resstories = $("#res2").val();
        var resbasements = $("#res3").val();
        var total= Math.ceil (resapp/(resstories*6));
        var total2= Math.ceil (resstories/20);
        var total3= total*total2;
  
        if(isNaN(total3)) {
          total3 = 0;
        }
    
        if (true)  {  
    
           $("#numberneeded").val(total3);
           
        }
        else {
        }
    };
    
    //Function for commercial Quote
    
  function commercialcalculator()
    {  
        var comunits = $("#com1").val();
        var comstories = $("#com2").val();
        var combasements = $("#com3").val();
        var comparkings = $("#com4").val();
        var comshaftstotal = $("#com5").val();
  
        if(isNaN(comshaftstotal)) {
          comshaftstotal = 0;
        }
    
        if (true)  {  
    
            $("#numberneeded").val(comshaftstotal);
         }
         else {
         }
    };
    //Function for Corporate Quote
    
  function corporatecalculator()
    {  
        var corpunits = $("#cor1").val();
        var corpstories = parseFloat($("#cor2").val());
        var corpbasements = parseFloat($("#cor3").val());
        var corpparkings = $("#cor4").val();
        var corpoccupants = $("#cor5").val();
        var corpoccupantstotal = Math.ceil ((corpstories + corpbasements) * corpoccupants);
        var corpshaftstotal = Math.ceil (corpoccupantstotal/1000);
  
        if(isNaN(comshaftstotal)) {
          comshaftstotal = 0;
        }
  
        if (true)  {  
    
            $("#numberneeded").val(corpshaftstotal);
         }
         else {
         }
    };
    //Function for Hybrid Quote
    
  function hybridcalculator()
    {  
        var hybunits =  $("#hyb1").val();
        var hybstories = parseFloat($("#hyb2").val());
        var hybbasements = parseFloat($("#hyb3").val());
        var hybparkings = $("#hyb4").val();
        var hyboccupants = $("#hyb5").val();
        var hyboccupantstotal = Math.ceil ((hybstories + hybbasements) * hyboccupants)
        var hybshaftstotal = Math.ceil (hyboccupantstotal/1000)
  
        if(isNaN(hybshaftstotal)) {
          hybshaftstotal = 0;
        }
    
        if (true)  {  
    
            $("#numberneeded").val(hybshaftstotal);
         }
         else {
         }
    };
  
    //Function for Pricing
    
  function pricecalculator() 
    {  
      var stan = $("#stan").is(":checked");
      var premium = $("#premium").is(":checked");
      var excelium = $("#excelium").is(":checked");
      var shaftsneeded = parseFloat($("#numberneeded").val());
  
     
  
     if (stan == true) {
  
          var elevatorcost = (shaftsneeded*7565).toFixed(2);
          var servicecost = shaftsneeded*7565*0.1;
          var totalcost = shaftsneeded*7565*1.1;
          var servicecostfixed = servicecost.toFixed(2);
          var totalcostfixed = totalcost.toFixed(2);
        // ( !isNaN(standardUnitPrice) )
        if (isNaN(elevatorcost)) {
          elevatorcost = 0;
        }
        
        if(isNaN(servicecostfixed)) {
          servicecostfixed = 0;
        }
        
        if (isNaN(totalcostfixed)) {
        
          totalcostfixed = 0;
        }
          $("#elevatortotal").val(elevatorcost);
          $("#servicetotal").val(servicecostfixed);
          $("#totalprice").val(totalcostfixed);
  
      } else if (premium == true) {
          var elevatorcost = (shaftsneeded*12345).toFixed(2);
          var servicecost = shaftsneeded*12345*0.13;
          var totalcost = shaftsneeded*12345*1.13;
          var servicecostfixed = servicecost.toFixed(2);
          var totalcostfixed = totalcost.toFixed(2);
         // ( !isNaN(standardUnitPrice) )
         if (isNaN(elevatorcost)) {
          elevatorcost = 0;
        }
        
        if(isNaN(servicecostfixed)) {
          servicecostfixed = 0;
        }
        
        if (isNaN(totalcostfixed)) {
        
          totalcostfixed = 0;
        }
          $("#elevatortotal").val(elevatorcost);
          $("#servicetotal").val(servicecostfixed);
          $("#totalprice").val(totalcostfixed);
  
      } else if (excelium == true) {
          var elevatorcost = (shaftsneeded*15400).toFixed(2);
          var servicecost = shaftsneeded*15400*0.16;
          var totalcost = shaftsneeded*15400*1.16;
          var servicecostfixed = servicecost.toFixed(2);
          var totalcostfixed = totalcost.toFixed(2);
         // ( !isNaN(standardUnitPrice) )
         if (isNaN(elevatorcost)) {
          elevatorcost = 0;
        }
        
        if(isNaN(servicecostfixed)) {
          servicecostfixed = 0;
        }
        
        if (isNaN(totalcostfixed)) {
        
          totalcostfixed = 0;
        }
          $("#elevatortotal").val(elevatorcost);
          $("#servicetotal").val(servicecostfixed);
          $("#totalprice").val(totalcostfixed);
      }
      else {
          $("totalprice").val(0);
      }
    };