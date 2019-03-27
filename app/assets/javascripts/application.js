// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require activestorage
//= require_tree .

$(document).ready(()=> {
    //checking if the submit button was clicked
    if (window.location.pathname == "/contact") {
        $("#submit").click(function () {
            formValidation();
        })
    }
});

function formValidation() {
    //variables for each field of the form
        var name = $('#name').val();
        var email = $('#email').val();
        var telephone = $('#telephone').val();
        var msg = $('#msg').val();

        //validation for name field
        if(name.length < 1){
            alert("Name must not be left blank")
        }
        //validation for email field
        if (email.length < 1) {
            alert("Email must not be left blank")
        }
        //validation for message field
        if(msg.length < 1){
            alert("Message must not be left blank")
        }
        //validation for telephone field
        if(telephone.length < 1){
            alert("Telephone must not be left blank")
        }

    }



