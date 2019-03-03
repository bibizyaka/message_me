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
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require semantic-ui
//= require_tree .

const scroll_bottom = () => {

  let objDiv = document.getElementById("messages");
  objDiv.scrollTop = objDiv.scrollHeight;
}


// const submit_message = (e) => {

    //   var key = e.which;
    //   if (key == 13) { // the enter key code
    //     $('.input button').click();
    //     return false;
    //   };
    // };


$(document).on("turbolinks:load", function() {
  //this drop down relevant to semantic-ui drop down menu
  $('.ui.dropdown').dropdown();

  //related to semantic-ui API for closing x on notifications
  $('.message .close').on('click', function() {
    $(this).closest('.message').transition('fade');
  });

  scroll_bottom();
})
