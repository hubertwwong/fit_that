// use javascripts.. no coffee script.
// i don't understand enough of it.

console.log("js load test");

// the thing i forgot...
// need to wrap things in a on body..
// thought rails did that for me..
// my bad.
$(document).ready(function() {
  // the flow needs to be...
  // make an ajax request to task_type controller. fetch the types.
  // update the second drop down.
  
  $("select").on("change", function() {
    console.log("send test");
  });
  
  $("body").on("change", function() {
    console.log("send test body");
  });
});