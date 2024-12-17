(function($) {



    var form = $("#signup-form");
    var details = {};
    /*
        Form controlling
    */
    form.on("change","input[name='OwnRent']",function(){
        if($(this).val() == "Rental"){
            $(".if-rental").fadeIn(200);
        }else{
            $(".if-rental").fadeOut(200);
        }
    })
    form.on("change","input[name='ration_avail']",function(){
        if($(this).val() == "No"){
            $(".ration-available").fadeOut(200);
        }else{
            $(".ration-available").fadeIn(200);
        }
    })
    form.on("change","input[name='ele_avail']",function(){
        if($(this).val() == "No"){
            $(".scheme-available").fadeOut(200);
        }else{
            $(".scheme-available").fadeIn(200);
        }
    })
    
    form.on("change","input[name='vechile_avl']",function(){
        if($(this).val() == "No"){
            $(".vec-avl").fadeOut(200);
        }else{
            $(".vec-avl").fadeIn(200);
        }
    })
    
    form.on("change","input[name='gas_avail']",function(){
        if($(this).val() == "No"){
            $(".gas-available").fadeOut(200);
        }else{
            $(".gas-available").fadeIn(200);
        }
    })
    form.on("change","input[name='solar']",function(){
        if($(this).val() == "No"){
            $(".solar-available").fadeOut(200);
        }else{
            $(".solar-available").fadeIn(200);
        }
    })
    form.on("change","input[name='res_asso']",function(){
        if($(this).val() == "No"){
            $(".res-available").fadeOut(200);
        }else{
            $(".res-available").fadeIn(200);
        }
    })
    form.on("change","input[name='disaster']",function(){
        if($(this).val() == "No"){
            $(".disaster-available").fadeOut(200);
        }else{
            $(".disaster-available").fadeIn(200);
        }
    })
    form.on("change","input[name='rainwater']",function(){
        if($(this).val() == "No"){
            $(".rainwater-available").fadeOut(200);
        }else{
            $(".rainwater-available").fadeIn(200);
        }
    })
    form.on("change","input[name='commercial_or_inst']",function(){
        if($(this).val() == "Commercial"){
            $(".if-commercial").fadeIn(200);
            $(".if-institutional").fadeOut(200);
        }else{
            $(".if-commercial").fadeOut(200);
            $(".if-institutional").fadeIn(200);
        }
    })
    form.on("change","input[name='type_of_religious_activity']",function(){
        if($(this).val() == "Other"){
            $(".if-religious-other").fadeIn(200);
        }else{
            $(".if-religious-other").fadeOut(200);
        }
    })
    form.on("change","input[name='type_of_inst']",function(){
        var dataName = $(this).attr("data-show");
        $(".type-of-institution").fadeOut(200);
        $(".type-of-institution[data-name='"+dataName+"']").fadeIn(200);
    })
    
    form.find("[data-points]").each(function(){
        var orig = $(this);
        var name = $(this).attr("name");
        var value;
        form.on("change","[name='"+name+"']",function(e){
            var element = $(this);
            if(element.is("[type='checkbox']") || element.is("[type='radio']")){
                if($(this).is(":checked")){
                    value = $(this).val();
                    console.log(value, orig.attr("data-hide-for"))
                    if(value == orig.attr("data-hide-for")){
                        var points = orig.attr("data-points");
                        form.find("[data-name='"+points+"']").hide(100);
                        var input = form.find("[data-name='"+points+"']").find("[data-default]");
                        input.each(function(){
                            $(this).attr("aria-invalid","false");
                            $(this).val($(this).attr("data-default"));
                        })
                    }else{
                        var points = orig.attr("data-points");
                        form.find("[data-name='"+points+"']").show(100);
                        var input = form.find("[data-name='"+points+"']").find("[data-default]");
                        input.each(function(){
                            $(this).val("");
                        })
                    }
                }else{
                    if($(this).is("[data-hide-for]")){
                        var points = $(this).attr("data-points");
                        form.find("[data-name='"+points+"']").show(100);
                        var input = form.find("[data-name='"+points+"']").find("[data-default]");
                        input.each(function(){
                            $(this).val("");
                        })
                    }
                }
            }else{
                value = element.val();
                if(value == element.attr("data-hide-for")){
                    var points = element.attr("data-points");
                    form.find("[data-name='"+points+"']").hide(100);
                    var input = form.find("[data-name='"+points+"']").find("[data-default]");
                    input.each(function(){
                        $(this).attr("aria-invalid","false");
                        $(this).val($(this).attr("data-default"));
                    })
                }else{
                    var points = element.attr("data-points");
                    form.find("[data-name='"+points+"']").show(100);
                    var input = form.find("[data-name='"+points+"']").find("[data-default]");
                    input.each(function(){
                        $(this).val("");
                    })
                }
            }
        })
    })
    
    form.on("keydown",function(e){if(e.which == 13) e.preventDefault(); });
    /*
     End form Controlling
    */
    var confirmed = false;
    form.validate({
        ignore: ':hidden',
        errorPlacement: function errorPlacement(error, element) {
            element.before(error);
        },
        rules: {
            email: {
                email: true
            },
        },
        onfocusout: function(element) {
            $(element).valid();
        },
    });
    $('input[required]').each(function() {
        $(this).rules('add', {
            messages:{
                required: "This field is required"
            }
        })
    })
    $('.validate-number').each(function() {
        $(this).rules('add', {
            required: true,
            number: true,
            messages: {
                required:  "This field is required",
                number:  "Please enter a number"
            }
        });
    });
    $("#dialog_error").dialog({
        autoOpen:false,
        buttons:[
        {
            text:"Ok",
            click:function(){
                $(this).dialog("close");
            }
        }],
        open: function(event, ui) {
            $(event.target).dialog('widget')
                .css({ position: 'fixed' })
                .position({ my: 'center', at: 'center', of: window });
        },
        resizable: false
    })
    form.children("div").steps({
        headerTag: "h3",
        bodyTag: "fieldset",
        transitionEffect: "fade",
        stepsOrientation: "vertical",
        titleTemplate: '<div class="title"><span class="step-number">#index#</span><span class="step-text">#title#</span></div>',
        labels: {
            previous: 'Previous',
            next: 'Next',
            finish: 'Finish',
            current: ''
        },
        onStepChanging: function(event, currentIndex, newIndex) {
            if (currentIndex === 0) {
                form.parent().parent().parent().append('<div class="footer footer-' + currentIndex + '"></div>');
                $.each(form.serializeArray(), function(i, field) {
                    details[field.name] = field.value;
                });
                $(".review-details .form-group[data-name]").each(function(){
                    var dataName = $(this).attr("data-name");
                    if(form.find("input[name="+dataName+"]").is(":checkbox")){
                        var checkbox = form.find("input[name="+dataName+"]");
                        var checkedValues = [];
                        checkbox.each(function(i,e){
                            if($(e).is(":checked")){
                                checkedValues.push($(e).val());
                            }
                        })
                        details[dataName] = checkedValues.join(",");
                    }
                    var value = details[dataName];
                    $(this).text(value);
                })
                if(details.OwnRent == "Owner"){
                    $(".if-rental").fadeOut(200);
                }
                if(details.ration_avail == "No"){
                    $(".if-ration").fadeOut(200);
                }
                if(details.ele_avail == "No"){
                    $(".if-elect").fadeOut(200);
                }
                if(details.gas_avail == "No"){
                    $(".if-gas").fadeOut(200);
                }
                if(details.solar == "No"){
                    $(".if-solar").fadeOut(200);
                }
                if(details.res_asso == "No"){
                    $(".res-available").fadeOut(200);
                }
                if(details.disaster_occured == "No"){
                    $(".disaster-available").fadeOut(200);
                }
                if(details.rainwater == "No"){
                    $(".rainwater-available").fadeOut(200);
                }
            }
            if (currentIndex === 1) {
                form.parent().parent().parent().find('.footer').removeClass('footer-0').addClass('footer-' + currentIndex + '');
            }
            if (currentIndex === 2) {
                form.parent().parent().parent().find('.footer').removeClass('footer-1').addClass('footer-' + currentIndex + '');
            }
            if (currentIndex === 3) {
                form.parent().parent().parent().find('.footer').removeClass('footer-2').addClass('footer-' + currentIndex + '');
            }
            // if(currentIndex === 4) {
            //     form.parent().parent().parent().append('<div class="footer" style="height:752px;"></div>');
            // }
            form.validate().settings.ignore = ":disabled,:hidden";
            if(!form.valid()){
                $('#dialog_error').html('<p>There was an error with the data you have entered. It has been highlighted, please check.</p>');
                $('#dialog_error').dialog('open');
            }
            return form.valid();
        },
        onFinishing: function(event, currentIndex) {
            form.validate().settings.ignore = ":disabled";
            $("#dialog_confirm").dialog("open");
            return form.valid();
        },
        onFinished: function(event, currentIndex) {

        },
        onStepChanged: function(event, currentIndex, priorIndex) {

            return true;
        }
    });

    jQuery.extend(jQuery.validator.messages, {
        required: "",
        remote: "",
        email: "",
        url: "",
        date: "",
        dateISO: "",
        number: "",
        digits: "",
        creditcard: "",
        equalTo: ""
    });

    $.dobPicker({
        daySelector: '#birth_date',
        monthSelector: '#birth_month',
        yearSelector: '#birth_year',
        dayDefault: '',
        monthDefault: '',
        yearDefault: '',
        minimumAge: 0,
        maximumAge: 120
    });
    var marginSlider = document.getElementById('slider-margin');
    if (marginSlider != undefined) {
        noUiSlider.create(marginSlider, {
              start: [1100],
              step: 100,
              connect: [true, false],
              tooltips: [true],
              range: {
                  'min': 100,
                  'max': 2000
              },
              pips: {
                    mode: 'values',
                    values: [100, 2000],
                    density: 4
                    },
                format: wNumb({
                    decimals: 0,
                    thousand: '',
                    prefix: '$ ',
                })
        });
        var marginMin = document.getElementById('value-lower'),
        marginMax = document.getElementById('value-upper');

        marginSlider.noUiSlider.on('update', function ( values, handle ) {
            if ( handle ) {
                marginMax.innerHTML = values[handle];
            } else {
                marginMin.innerHTML = values[handle];
            }
        });
    }

    $("#dialog_confirm").dialog({
        autoOpen:false,
        buttons:[
        {
            text:"Yes",
            click:function(){
                confirmed = true;
                var count_data = 0;
                $('.first_name').each(function(){
                    count_data = count_data + 1;
                });
                if(count_data > 0)
                {
                    var form_data = new FormData(form[0]);//$(form).serialize();
                    for (var value of form_data.values()) {
                       console.log(value); 
                    }
                    $.ajax({
                        url:"insert.php",
                        method:"POST",
                        cache:false,
                        contentType: false,
                        processData: false,
                        data:form_data, 
                        success:function(data)
                        {
                            $('#user_data').find("tr:gt(0)").remove();
                            $('#action_alert').html('<p>Data Inserted Successfully</p>');
                             $('#action_alert').dialog('open');
				console.log(data);
                            /*$('#action_alert').on('dialogclose', function(event) {
                                 window.location.reload();
                             });
*/
                        },
                        error:function(data){
                            $('#action_alert').html('<p>An error occured while uploading data.</p>');
                            $('#action_alert').dialog('open');
                        }
                    })
                }
                else
                {
                    $('#action_alert').html('<p>Please Add atleast one data</p>');
                    $('#action_alert').dialog('open');
                    return false;
                }
                $(this).dialog("close");

            }
        },{
            text:"No",
            click:function(){
                confirmed = false;
                $(this).dialog("close");
            }
        }]
    })


    var uid=document.getElementById('uid').value;
    var count = 0;


    $('#add').click(function(){
        $('#first_name').val('');
        
        $('#dob').val('');
        $('#gender').val('');
        $('#blood_group').val('');
        $('#relationship_familyhead').val('');
        $('#marital_status').val('');
        
        
        
           $('#religion').val('');
         $('#caste').val('');
        $('#educational').val('');
         $('#edu_spec').val(''); 
     $('#occupation').val('');
         $('#job_sec').val('');
        

   $('#income').val('');
    $('#phone').val('');
    $('#emailid').val('');
       $('#ele_id').val('');
     $('#ele_id_num').val('');
        $('#aadhar_avl').val('');
        $('#aadhar_num').val('');
      $('#pan_avail').val('');
     $('#pan_number').val('');
      $('#bank_acc').val('');
      $('#comp_knw').val('');
        $('#ex_service').val('');
      $('#mgnregs').val('');
         $('#ins_avl').val('');
         $('[name="health"]').prop("checked",false);
/*$('#bp').val('');
        $('#bedridden').val('');
    $('#caner').val('');
        $('#other_issues').val('');*/
        
        $('#specify_disability').val('');
         $('#disability_percentage').val('');
        $('#pension_avl').val('');
      $('#avl_pension').val('');
       $('#residing').val('');
       $('#nativity').val('');
       $('#res_in').val('');
       
       $('#current_education').val('');
        

        $('#e_category').val('');
        $('#save').text('Save');
        $("#user_dialog_member_details").fadeIn(400);
    });

    $('#save').click(function(){

        var first_name = $("#first_name").val();
       
        
        var dob= $('#dob').val();



        var gender=$('#gender').val();
        var blood_group=$('#blood_group').val();
        var relationship_familyhead=$('#relationship_familyhead').val();
        var marital_status = $('#marital_status').val();
        var religion=  $('#religion').val();
        var caste = $('#caste').val();
        var edu_details= $('#educational').val();
        var edu_spec = $('#edu_spec').val(); 
        var occupation = $('#occupation').val();
        var job_sec=  $('#job_sec').val();
        
        var current_edu = $('#current_education').val();
        
        
        var income =$('#income').val();
        var phone =  $('#phone').val();
        var email =  $('#emailid').val();
        var ele_id_avl= $('#ele_id').val();
        var ele_num = $('#ele_id_num').val();
        var aadhar_avl =  $('#aadhar_avl').val();
        var aadhar_num =  $('#aadhar_num').val();
        var pan_avl =  $('#pan_avail').val();
        var pan_num = $('#pan_number').val();
        var bankacc =  $('#bank_acc').val();
        var comp_knw = $('#comp_knw').val();
        var ex_service =  $('#ex_service').val();
        var mgnregs =  $('#mgnregs').val();
        var insurance_avl =  $('#ins_avl').val();
        var bp = $('#bp').val();
        var sugar =  $('#sugar').val();
        var bedridden =  $('#bedridden').val();
        var cancer=  $('#caner').val();
        var other_issues =  $('#other_issues').val();
        var dis_yn = $('#differently_abled').val();
        var disabilities =  $('#specify_disability').val();
        var disabilitie_per=  $('#disability_percentage').val();
        var pension_avl =  $('#pension_avl').val();
        var pension =  $('#avl_pension').val();
        var residing =  $('#residing').val();
        var nativity =  $('#nativity').val();
        var category =  $('#e_category').val();
        
        var res_in = $('#res_in').val();
        var health_issues = [];
        form.find("[name=health]").each(function(i,e){
            if($(e).is(":checked")){
                health_issues.push($(e).val());
            }
        })
        
        health_issues = health_issues.join(",");
        
        console.log(health_issues);

        if(!form.valid())
        {
            $("#dialog_error").dialog("open");
            return false;
        }
        else
        {
            if($('#save').text() == 'Save')
            {
                count = count + 1;
                output = '<tr id="row_'+count+'">';
                output += '<td>'+first_name+' <input type="hidden" name="hidden_first_name[]" id="first_name'+count+'" class="first_name" value="'+first_name+'" /></td>';

                output += '<td >'+dob+' <input type="hidden" name="hidden_dob[]" id="dob'+count+'" value="'+dob+'" /></td>';
                output += '<td style="display:none;">'+gender+' <input type="hidden" name="hidden_gender[]" id="gender'+count+'" value="'+gender+'" /></td>';
                output += '<td style="display:none;">'+blood_group+' <input type="hidden" name="hidden_blood_group[]" id="blood_group'+count+'" value="'+blood_group+'" /></td>';
                output += '<td style="display:none;">'+relationship_familyhead+' <input type="hidden" name="hidden_relationship_familyhead[]" id="relationship_familyhead'+count+'" value="'+relationship_familyhead+'" /></td>';
                output += '<td style="display:none;">'+marital_status+' <input type="hidden" name="hidden_marital_status[]" id="marital_status'+count+'" value="'+marital_status+'" /></td>';
                


                output += '<td style="display:none;">'+religion+' <input type="hidden" name="hidden_religion[]" id="religion'+count+'" value="'+religion+'" /></td>';

                 output += '<td style="display:none;">'+caste+' <input type="hidden" name="hidden_caste[]" id="caste'+count+'" value="'+caste+'" /></td>';


                 output += '<td style="display:none;">'+category+' <input type="hidden" name="hidden_category[]" id="category'+count+'" value="'+category+'" /></td>';

               
                output += '<td style="display:none;">'+edu_details+' <input type="hidden" name="hidden_edu_details[]" id="edu_details'+count+'" value="'+edu_details+'" /></td>';
                
                output += '<td style="display:none;">'+edu_spec+' <input type="hidden" name="hidden_edu_spec[]" id="edu_spec'+count+'" value="'+edu_spec+'" /></td>';

               
                output += '<td style="display:none;">'+current_edu+' <input type="hidden" name="hidden_current_edu[]" id="current_edu'+count+'" value="'+current_edu+'" /></td>';

               
                output += '<td style="display:none;">'+occupation+' <input type="hidden" name="hidden_occupation[]" id="occupation'+count+'" value="'+occupation+'" /></td>';
               
                output += '<td style="display:none;">'+job_sec+' <input type="hidden" name="hidden_job_sec[]" id="job_sec'+count+'" value="'+job_sec+'" /></td>';

                output += '<td style="display:none;">'+income+' <input type="hidden" name="hidden_income[]" id="income'+count+'" value="'+income+'" /></td>';

                output += '<td style="display:none;">'+phone+' <input type="hidden" name="hidden_phone[]" id="phone'+count+'" value="'+phone+'" /></td>';

                output += '<td style="display:none;">'+email+' <input type="hidden" name="hidden_email[]" id="email'+count+'" value="'+email+'" /></td>';

                output += '<td style="display:none;">'+ele_id_avl+' <input type="hidden" name="hidden_ele_id_avl[]" id="ele_id_avl'+count+'" value="'+ele_id_avl+'" /></td>';

                output += '<td style="display:none;">'+ele_num+' <input type="hidden" name="hidden_ele_num[]" id="ele_num'+count+'" value="'+ele_num+'" /></td>';

                output += '<td style="display:none;">'+aadhar_avl+' <input type="hidden" name="hidden_aadhar_avl[]" id="aadhar_avl'+count+'" value="'+aadhar_avl+'" /></td>';

                output += '<td style="display:none;">'+aadhar_num+' <input type="hidden" name="hidden_aadhar_num[]" id="aadhar_num'+count+'" value="'+aadhar_num+'" /></td>';

                output += '<td style="display:none;">'+pan_avl+' <input type="hidden" name="hidden_pan_avl[]" id="pan_avl'+count+'" value="'+pan_avl+'" /></td>';

                output += '<td style="display:none;">'+pan_num+' <input type="hidden" name="hidden_pan_num[]" id="pan_num'+count+'" value="'+pan_num+'" /></td>';

                output += '<td style="display:none;">'+bankacc+' <input type="hidden" name="hidden_bankacc[]" id="bankacc'+count+'" value="'+bankacc+'" /></td>';

                output += '<td style="display:none;">'+comp_knw+' <input type="hidden" name="hidden_comp_knw[]" id="comp_knw'+count+'" value="'+comp_knw+'" /></td>';

                output += '<td style="display:none;">'+ex_service+' <input type="hidden" name="hidden_ex_service[]" id="ex_service'+count+'" value="'+ex_service+'" /></td>';

                output += '<td style="display:none;">'+mgnregs+' <input type="hidden" name="hidden_mgnregs[]" id="mgnregs'+count+'" value="'+mgnregs+'" /></td>';


            output += '<td style="display:none;">'+insurance_avl+' <input type="hidden" name="hidden_insurance_avl[]" id="insurance_avl'+count+'" value="'+insurance_avl+'" /></td>';

            output += '<td style="display:none;">'+health_issues+' <input type="hidden" name="hidden_health_issues[]" id="health_issues'+count+'" value="'+health_issues+'" /></td>';

            output += '<td style="display:none;">'+bp+' <input type="hidden" name="hidden_bp[]" id="bp'+count+'" value="'+bp+'" /></td>';
            
            output += '<td style="display:none;">'+sugar+' <input type="hidden" name="hidden_sugar[]" id="sugar'+count+'" value="'+sugar+'" /></td>';
            
            output += '<td style="display:none;">'+bedridden+' <input type="hidden" name="hidden_bedridden[]" id="bedridden'+count+'" value="'+bedridden+'" /></td>';
            
            output += '<td style="display:none;">'+cancer+' <input type="hidden" name="hidden_cancer[]" id="cancer'+count+'" value="'+cancer+'" /></td>';
            
            output += '<td style="display:none;">'+other_issues+' <input type="hidden" name="hidden_other_issues[]" id="other_issues'+count+'" value="'+other_issues+'" /></td>';
            
            output += '<td style="display:none;">'+dis_yn+' <input type="hidden" name="hidden_dis_yn[]" id="dis_yn'+count+'" value="'+dis_yn+'" /></td>';

            output += '<td style="display:none;">'+disabilities+' <input type="hidden" name="hidden_disabilities[]" id="disabilities'+count+'" value="'+disabilities+'" /></td>';
            
           
            output += '<td style="display:none;">'+disabilitie_per+' <input type="hidden" name="hidden_disabilities_per[]" id="disabilities_per'+count+'" value="'+disabilitie_per+'" /></td>';

            output += '<td style="display:none;">'+pension_avl+' <input type="hidden" name="hidden_pension_avl[]" id="pension_avl'+count+'" value="'+pension_avl+'" /></td>';

            output += '<td style="display:none;">'+pension+' <input type="hidden" name="hidden_pension[]" id="pension'+count+'" value="'+pension+'" /></td>';

            output += '<td style="display:none;">'+residing+' <input type="hidden" name="hidden_residing[]" id="residing'+count+'" value="'+residing+'" /></td>';

            output += '<td style="display:none;">'+nativity+' <input type="hidden" name="hidden_nativity[]" id="nativity'+count+'" value="'+nativity+'" /></td>';

            output += '<td style="display:none;">'+res_in+' <input type="hidden" name="hidden_res_in[]" id="nativity'+count+'" value="'+res_in+'" /></td>';



                output += '<td><button type="button" name="view_details" class="btn custom2 btn-warning btn-xs view_details" data-id="'+count+'">View</button></td>';
                output += '<td><button type="button" name="remove_details" class="btn custom2 btn-danger btn-xs remove_details" data-id="'+count+'">Remove</button></td>';

                output += '</tr>';
                $('#user_data').append(output);
            }
            else
            {
                var row_id = $('#hidden_row_id').val();
                output = '<td>'+first_name+' <input type="hidden" name="hidden_first_name[]" id="first_name'+row_id+'" class="first_name" value="'+first_name+'" /></td>';
                output += '<td >'+dob+' <input type="hidden" name="hidden_dob[]" id="dob'+row_id+'" value="'+dob+'" /></td>';
                output += '<td style="display:none;">'+gender+' <input type="hidden" name="hidden_gender[]" id="gender'+row_id+'" value="'+gender+'" /></td>';
                output += '<td style="display:none;">'+blood_group+' <input type="hidden" name="hidden_blood_group[]" id="blood_group'+row_id+'" value="'+blood_group+'" /></td>';
                output += '<td style="display:none;">'+relationship_familyhead+' <input type="hidden" name="hidden_relationship_familyhead[]" id="relationship_familyhead'+row_id+'" value="'+relationship_familyhead+'" /></td>';
                


                output += '<td style="display:none;">'+marital_status+' <input type="hidden" name="hidden_marital_status[]" id="marital_status'+row_id+'" value="'+marital_status+'" /></td>';

                output += '<td style="display:none;">'+religion+' <input type="hidden" name="hidden_religion[]" id="religion'+row_id+'" value="'+religion+'" /></td>';

                 output += '<td style="display:none;">'+caste+' <input type="hidden" name="hidden_caste[]" id="caste'+row_id+'" value="'+caste+'" /></td>';
               
                    output += '<td style="display:none;">'+category+' <input type="hidden" name="hidden_category[]" id="category'+row_id+'" value="'+category+'" /></td>';
             
                
                
                output += '<td style="display:none;">'+edu_details+' <input type="hidden" name="hidden_edu_details[]" id="edu_details'+row_id+'" value="'+edu_details+'" /></td>';
                
                output += '<td style="display:none;">'+edu_spec+' <input type="hidden" name="hidden_edu_spec[]" id="edu_spec'+row_id+'" value="'+edu_spec+'" /></td>';


                output += '<td style="display:none;">'+current_edu+' <input type="hidden" name="hidden_current_edu[]" id="edu_spec'+row_id+'" value="'+current_edu+'" /></td>';


                output += '<td style="display:none;">'+occupation+' <input type="hidden" name="hidden_occupation[]" id="occupation'+row_id+'" value="'+occupation+'" /></td>';
               
                output += '<td style="display:none;">'+job_sec+' <input type="hidden" name="hidden_job_sec[]" id="job_sec'+row_id+'" value="'+job_sec+'" /></td>';

                output += '<td style="display:none;">'+income+' <input type="hidden" name="hidden_income[]" id="income'+row_id+'" value="'+income+'" /></td>';

                output += '<td style="display:none;">'+phone+' <input type="hidden" name="hidden_phone[]" id="phone'+row_id+'" value="'+phone+'" /></td>';

                output += '<td style="display:none;">'+email+' <input type="hidden" name="hidden_email[]" id="email'+row_id+'" value="'+email+'" /></td>';

                output += '<td style="display:none;">'+ele_id_avl+' <input type="hidden" name="hidden_ele_id_avl[]" id="ele_id_avl'+row_id+'" value="'+ele_id_avl+'" /></td>';

                output += '<td style="display:none;">'+ele_num+' <input type="hidden" name="hidden_ele_num[]" id="ele_num'+row_id+'" value="'+ele_num+'" /></td>';

                output += '<td style="display:none;">'+aadhar_avl+' <input type="hidden" name="hidden_aadhar_avl[]" id="aadhar_avl'+row_id+'" value="'+aadhar_avl+'" /></td>';

                output += '<td style="display:none;">'+aadhar_num+' <input type="hidden" name="hidden_aadhar_num[]" id="aadhar_num'+row_id+'" value="'+aadhar_num+'" /></td>';

                output += '<td style="display:none;">'+pan_avl+' <input type="hidden" name="hidden_pan_avl[]" id="pan_avl'+row_id+'" value="'+pan_avl+'" /></td>';

                output += '<td style="display:none;">'+pan_num+' <input type="hidden" name="hidden_pan_num[]" id="pan_num'+row_id+'" value="'+pan_num+'" /></td>';

                output += '<td style="display:none;">'+bankacc+' <input type="hidden" name="hidden_bankacc[]" id="bankacc'+row_id+'" value="'+bankacc+'" /></td>';

                output += '<td style="display:none;">'+comp_knw+' <input type="hidden" name="hidden_comp_knw[]" id="comp_knw'+row_id+'" value="'+comp_knw+'" /></td>';

                output += '<td style="display:none;">'+ex_service+' <input type="hidden" name="hidden_ex_service[]" id="ex_service'+row_id+'" value="'+ex_service+'" /></td>';

                output += '<td style="display:none;">'+mgnregs+' <input type="hidden" name="hidden_mgnregs[]" id="mgnregs'+row_id+'" value="'+mgnregs+'" /></td>';


            output += '<td style="display:none;">'+insurance_avl+' <input type="hidden" name="hidden_insurance_avl[]" id="insurance_avl'+row_id+'" value="'+insurance_avl+'" /></td>';

            output += '<td style="display:none;">'+health_issues+' <input type="hidden" name="hidden_health_issues[]" id="health_issues'+row_id+'" value="'+health_issues+'" /></td>';

            output += '<td style="display:none;">'+bp+' <input type="hidden" name="hidden_bp[]" id="bp'+row_id+'" value="'+bp+'" /></td>';
            
            output += '<td style="display:none;">'+sugar+' <input type="hidden" name="hidden_sugar[]" id="sugar'+row_id+'" value="'+sugar+'" /></td>';
            
            output += '<td style="display:none;">'+bedridden+' <input type="hidden" name="hidden_bedridden[]" id="bedridden'+row_id+'" value="'+bedridden+'" /></td>';
            
            output += '<td style="display:none;">'+cancer+' <input type="hidden" name="hidden_cancer[]" id="cancer'+row_id+'" value="'+cancer+'" /></td>';
            
            output += '<td style="display:none;">'+other_issues+' <input type="hidden" name="hidden_other_issues[]" id="other_issues'+row_id+'" value="'+other_issues+'" /></td>';
            
            output += '<td style="display:none;">'+disabilities+' <input type="hidden" name="hidden_disabilities[]" id="disabilities'+row_id+'" value="'+disabilities+'" /></td>';

            output += '<td style="display:none;">'+dis_yn+' <input type="hidden" name="hidden_dis_yn[]" id="dis_yn'+row_id+'" value="'+dis_yn+'" /></td>';


            output += '<td style="display:none;">'+disabilitie_per+' <input type="hidden" name="hidden_disabilities_per[]" id="disabilities_per'+row_id+'" value="'+disabilitie_per+'" /></td>';

            
            
            output += '<td style="display:none;">'+pension_avl+' <input type="hidden" name="hidden_pension_avl[]" id="pension_avl'+row_id+'" value="'+pension_avl+'" /></td>';

            output += '<td style="display:none;">'+pension+' <input type="hidden" name="hidden_pension[]" id="pension'+row_id+'" value="'+pension+'" /></td>';

            output += '<td style="display:none;">'+residing+' <input type="hidden" name="hidden_residing[]" id="residing'+row_id+'" value="'+residing+'" /></td>';

            output += '<td style="display:none;">'+nativity+' <input type="hidden" name="hidden_nativity[]" id="nativity'+row_id+'" value="'+nativity+'" /></td>';


            output += '<td style="display:none;">'+res_in+' <input type="hidden" name="hidden_res_in[]" id="nativity'+row_id+'" value="'+res_in+'" /></td>';


                output += '<td><button type="button" name="view_details" class="btn custom2 btn-warning btn-xs view_details" data-id="'+row_id+'">View</button></td>';
                output += '<td><button type="button" name="remove_details" class="btn custom2 btn-danger btn-xs remove_details" data-id="'+row_id+'">Remove</button></td> </tr>';

                $('#row_'+row_id+'').html(output);
            }
             $("#user_dialog_member_details").fadeOut(400);
            $('#user_dialog').dialog('close');
        }
    });
    
    $("#cancel").click(function(){
        $("#user_dialog_member_details").fadeOut(400);
    })

    $(document).on('click', '.view_details', function(){
        var row_id = $(this).attr("data-id");
        var first_name = $('#first_name'+row_id+'').val();
        var last_name = $('#last_name'+row_id+'').val();
        $("#user_dialog_member_details").fadeIn(400);

        $('#first_name').val($('#first_name'+row_id).val());
        $('#middle_name').val($('#middle_name'+row_id).val());
        $('#last_name').val($('#last_name'+row_id).val());
        $('#dob').val($('#dob'+row_id).val());
        $('#gender').val($('#gender'+row_id).val());
        $('#blood_group').val($('#blood_group'+row_id).val());
        $('#relationship_familyhead').val($('#relationship_familyhead'+row_id).val());
        $('#marital_status').val($('#marital_status'+row_id).val());
        $('#religion').val($('#religion'+row_id).val());
        $('#caste').val($('#caste'+row_id).val());
        $('#email').val($('#email'+row_id).val());
        $('#voter_avail').val($('#voter_avail'+row_id).val());
        $('#voter_number').val($('#voter_number'+row_id).val());

        $('#save').text('Edit');
        $('#hidden_row_id').val(row_id);
        $('#user_dialog').dialog('option', 'title', 'Edit Data');
        $('#user_dialog').dialog('open');

    });

    $(document).on('click', '.remove_details', function(){
        var row_id = $(this).attr("data-id");
        if(confirm("Are you sure you want to remove this row data?"))
        {
            $('#row_'+row_id+'').remove();
        }
        else
        {
            return false;
        }
    });

    $('#action_alert').dialog({
        autoOpen:false
    });
})(jQuery);
