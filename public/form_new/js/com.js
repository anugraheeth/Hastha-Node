

(function($) {



    var form = $("#signup-form");
    var details = {};
    /*
        Form controlling
    */
    
    
    
       form.on("change","input[name='category']",function(){
        if($(this).val() == "Commercial"){
             $('div[data-name="commercial"]').fadeIn(200);
            $('div[data-name="religious"]').fadeOut(200);
            $('div[data-name="educational"]').fadeOut(200);
            $('div[data-name="hospital"]').fadeOut(200);
            $('div[data-name="industry"]').fadeOut(200);
        }else if($(this).val() == "Religious"){
             $('div[data-name="commercial"]').fadeOut(200);
            $('div[data-name="religious"]').fadeIn(200);
            $('div[data-name="educational"]').fadeOut(200);
            $('div[data-name="hospital"]').fadeOut(200);
            $('div[data-name="industry"]').fadeOut(200);
        }else if($(this).val() == "Educational"){
             $('div[data-name="commercial"]').fadeOut(200);
            $('div[data-name="religious"]').fadeOut(200);
            $('div[data-name="educational"]').fadeIn(200);
            $('div[data-name="hospital"]').fadeOut(200);
            $('div[data-name="industry"]').fadeOut(200);
        }else if($(this).val() == "Hospital"){
             $('div[data-name="commercial"]').fadeOut(200);
            $('div[data-name="religious"]').fadeOut(200);
            $('div[data-name="educational"]').fadeOut(200);
            $('div[data-name="hospital"]').fadeIn(200);
            $('div[data-name="industry"]').fadeOut(200);
        }else if($(this).val() == "Industrial"){
             $('div[data-name="commercial"]').fadeOut(200);
            $('div[data-name="religious"]').fadeOut(200);
            $('div[data-name="educational"]').fadeOut(200);
            $('div[data-name="hospital"]').fadeOut(200);
            $('div[data-name="industry"]').fadeIn(200);
        }
    })
  

    
    
    
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
                var reviewDetails = $("#review_details_show");
                reviewDetails.html("");
                $(".form-label[data-name]").each(function(i,e){
                    var dataName = $(this).attr("data-name");
                    if($(this).parents("[data-parent]").length > 0){
                        var parent = $(this).parents("[data-parent]");
                        var parentPointsTo = parent.attr("data-parent");
                        var parentControlledBy = $("[name='"+parentPointsTo+"']:checked");
                        if(parentControlledBy.attr("data-show") != parent.attr("data-name")){
                            return true;
                        }
                    }
                    if($(this).is("[data-controller]")){
                        var controller = $(this).attr("data-controller");
                        var shownFor = $(this).attr("data-shown-for");
                        if($("[name='"+controller+"']:checked").val() != shownFor){
                            return true;
                        }
                    }
                    var details = $("[name='"+dataName+"']");
                    var value = details.val();
                    if(details.attr("type") == "radio"){
                        value = $("[name='"+dataName+"']:checked").val();
                    }else if(details.attr("type") == "checkbox"){
                        var arr = [];
                        details.each(function(){
                            if($(this).is(":checked")){
                                arr.push($(this).val());
                            }
                        })
                        value = arr.join(",");
                    }
                    var flex = $("<div class='form-flex'></div>");
                    var group = $("<div class='form-group title'>"+$(this).text()+"</div>");
                    var group2 = $("<div class='form-group' data-name='"+dataName+"'>"+value+"</div>");
                    flex.append(group)
                    .append(group2);
                    reviewDetails.append(flex);
                                    
                })
                /*$(".review-details .form-group[data-name]").each(function(){
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
                }*/
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
                $('.name').each(function(){
                    count_data = count_data + 1;
                });
                if(count_data > 0)
                {
                    var form_data = $(form).serialize();
                    console.log(form_data);
                    $.ajax({
                        url:"com.php",
                        method:"POST",
                        data:form_data, 
                        success:function(data)
                        {
                            $('#user_data').find("tr:gt(0)").remove();
                            $('#action_alert').html('<p>Data Inserted Successfully</p>');
                            $('#action_alert').dialog('open');

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

    $("#dialog_error").dialog({
        autoOpen:false,
        buttons:[
        {
            text:"Ok",
            click:function(){
                $(this).dialog("close");
            }
        }]
    })

    var uid=document.getElementById('uid').value;
    var count = 0;
    form.on("keydown",function(e){if(e.which == 13) e.preventDefault(); });


    $('#add').click(function(){
        
        
        
        $('#first_name').val('');
        $('#dob').val('');
        $('#gender').val('');
        $('#designation').val('');
        $('#phone').val('');
        $('#temp_address').val('');
        $('#perma_address').val('');
        $('#educational').val('');
        
        
        
           $('#income').val('');
         $('#aadhar_avl').val('');
        $('#aadhar_num').val('');
         $('#ins_avl').val(''); 
     
        
        
        
        $('#save').text('Save');
        $("#user_dialog_member_details").fadeIn(400);
    });

    $('#save').click(function(){



    var name=    $('#first_name').val();
    var dob=    $('#dob').val();
    var gender=        $('#gender').val();
    var designation=    $('#designation').val();
    var phone =    $('#phone').val();
    var temp_add=    $('#temp_address').val();
    var per_add =   $('#perma_address').val();
    var edu=    $('#educational').val();
        
        
        
    var income=       $('#income').val();
    var aadhar_avl=     $('#aadhar_avl').val();
    var aadhar_num = $('#aadhar_num').val();
    var insu=     $('#ins_avl').val(); 

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
                
                output += '<td>'+name+' <input type="hidden" name="hidden_name_i[]" id="name'+count+'" class="name" value="'+name+'" /></td>';
                
               	output += '<td>'+dob+' <input type="hidden" name="hidden_dob_i[]" id="dob'+count+'" value="'+dob+'" /></td>';
                
                
                output += '<td style="display:none;">'+gender+' <input type="hidden" name="hidden_gender_i[]" id="gender'+count+'" value="'+gender+'" /></td>';
                
          
				  output += '<td style="display:none;">'+designation+' <input type="hidden" name="hidden_designation_i[]" id="designation'+count+'" value="'+designation+'" /></td>';

				  output += '<td style="display:none;">'+phone+' <input type="hidden" name="hidden_phone_i[]" id="phone'+count+'" value="'+phone+'" /></td>';

				  output += '<td style="display:none;">'+temp_add+' <input type="hidden" name="hidden_temp_add_i[]" id="temp_add'+count+'" value="'+temp_add+'" /></td>';

				  output += '<td style="display:none;">'+per_add+' <input type="hidden" name="hidden_per_add_i[]" id="per_add'+count+'" value="'+per_add+'" /></td>';

				  output += '<td style="display:none;">'+edu+' <input type="hidden" name="hidden_edu_i[]" id="edu'+count+'" value="'+edu+'" /></td>';

				  output += '<td style="display:none;">'+income+' <input type="hidden" name="hidden_income_i[]" id="income'+count+'" value="'+income+'" /></td>';

				  output += '<td style="display:none;">'+aadhar_avl+' <input type="hidden" name="hidden_aadhar_avl_i[]" id="aadhar_avl'+count+'" value="'+aadhar_avl+'" /></td>';

				  output += '<td style="display:none;">'+aadhar_num+' <input type="hidden" name="hidden_aadhar_num_i[]" id="aadhar_num'+count+'" value="'+aadhar_num+'" /></td>';




				  output += '<td style="display:none;">'+insu+' <input type="hidden" name="hidden_insu_i[]" id="insu'+count+'" value="'+insu+'" /></td>';


                




                output += '<td><button type="button" name="view_details" class="btn custom2 btn-warning btn-xs view_details" data-id="'+count+'">View</button></td>';
                output += '<td><button type="button" name="remove_details" class="btn custom2 btn-danger btn-xs remove_details" data-id="'+count+'">Remove</button></td>';

                output += '</tr>';
                $('#user_data').append(output);
            }
            else
            {
                var row_id = $('#hidden_row_id').val();
                console.log(row_id);
                


                output = '<td>'+name+' <input type="hidden" name="hidden_name_i[]" id="name'+row_id+'" class="name" value="'+name+'" /></td>';
                

                
                output += '<td>'+dob+' <input type="hidden" name="hidden_dob_i[]" id="dob'+row_id+'" value="'+dob+'" /></td>';
                
                output += '<td style="display:none;">'+gender+' <input type="hidden" name="hidden_gender_i[]" id="gender'+row_id+'" value="'+gender+'" /></td>';
                
                output += '<td style="display:none;">'+designation+' <input type="hidden" name="hidden_designation_i[]" id="designation'+row_id+'" value="'+designation+'" /></td>';
                
                output += '<td style="display:none;">'+phone+' <input type="hidden" name="hidden_phone_i[]" id="phone'+row_id+'" value="'+phone+'" /></td>';
                
                output += '<td style="display:none;">'+temp_add+' <input type="hidden" name="hidden_temp_add_i[]" id="temp_add'+row_id+'" value="'+temp_add+'" /></td>';
                


                output += '<td style="display:none;">'+per_add+' <input type="hidden" name="hidden_per_add_i[]" id="per_add'+row_id+'" value="'+per_add+'" /></td>';

                output += '<td style="display:none;">'+edu+' <input type="hidden" name="hidden_edu_i[]" id="edu'+row_id+'" value="'+edu+'" /></td>';

                 output += '<td style="display:none;">'+income+' <input type="hidden" name="hidden_income_i[]" id="income'+row_id+'" value="'+income+'" /></td>';
               
                output += '<td style="display:none;">'+aadhar_avl+' <input type="hidden" name="hidden_aadhar_avl_i[]" id="aadhar_avl'+row_id+'" value="'+aadhar_avl+'" /></td>';
                
                output += '<td style="display:none;">'+aadhar_num+' <input type="hidden" name="hidden_aadhar_num_i[]" id="aadhar_num'+row_id+'" value="'+aadhar_num+'" /></td>';


                output += '<td style="display:none;">'+insu+' <input type="hidden" name="hidden_insu_i[]" id="edu_spec'+row_id+'" value="'+insu+'" /></td>';


             
                          
          
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
        console.log()
        var name = $('#name'+row_id+'').val();

        $("#user_dialog_member_details").fadeIn(400);

        $('#name').val($('#name'+row_id).val());
        $('#dob').val($('#dob'+row_id).val());
            $('#gender').val($('#gender'+row_id).val());
                $('#designation').val($('#designation'+row_id).val());
                    $('#phone').val($('#phone'+row_id).val());
                        $('#temp_add').val($('#temp_add'+row_id).val());
                            $('#per_add').val($('#per_add'+row_id).val());
                                $('#edu').val($('#edu'+row_id).val());
                                    $('#income').val($('#income'+row_id).val());
                                        $('#aadhar_avl').val($('#aadhar_avl'+row_id).val());
                                            $('#aadhar_num').val($('#aadhar_num'+row_id).val());
                                                $('#edu_spec').val($('#edu_spec'+row_id).val());
                                                

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